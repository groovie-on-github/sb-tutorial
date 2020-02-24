package com.example.sbtutorial.controller

import com.example.sbtutorial.BaseTestSetup
import com.example.sbtutorial.mockSession
import com.example.sbtutorial.model.user.AuthenticationType
import com.example.sbtutorial.helper.TestHelper as TH
import com.example.sbtutorial.model.user.User
import com.example.sbtutorial.model.user.UserForm
import com.example.sbtutorial.model.user.UsersService
import com.gargoylesoftware.htmlunit.WebClient
import com.gargoylesoftware.htmlunit.html.HtmlElement
import org.assertj.core.api.Assertions.*
import org.junit.jupiter.api.BeforeEach
import org.junit.jupiter.api.Test
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest
import org.springframework.http.HttpStatus
import org.springframework.test.web.servlet.MockMvc
import org.springframework.web.util.UriComponentsBuilder
import java.net.URI
import java.time.Duration
import java.time.Instant
import java.util.*

@WebMvcTest(PasswordResetsController::class, ErrorHandleController::class)
class PasswordResetsControllerIT @Autowired constructor(
    private val us: UsersService, private val mvc: MockMvc,
    private val client: WebClient): BaseTestSetup(client) {

    private lateinit var user: User
    private lateinit var userForm: UserForm
    private lateinit var nonActivateUserForm: UserForm

    @BeforeEach
    override fun setUp() {
        super.setUp()
        user = us.findByEmail("michael@example.com")!!
        userForm = UserForm(us, user)
        nonActivateUserForm = UserForm(us, us.findAll().first { !it.isActivated })
    }

    @Test
    fun `パスワードリセット要求画面が表示できる`() {
        val result = TH.get(mvc, "/password_resets/new")
        assertThat(result.response.status).isEqualTo(HttpStatus.OK.value())
        val newPage = TH.parseHtml(result, client)
        assertThat(newPage.titleText).startsWith("Forgot password")
        assertThat(newPage.getByXPath<HtmlElement>("//form[@action='/password_resets' and @method='post']"))
            .hasSize(1)
    }

    @Test
    fun `正しいメールアドレスならばパスワードリセット要求ができる - メッセージと共にルートにリダイレクトされる`() {
        var result = TH.get(mvc, "/password_resets/new")
        result = TH.post(mvc, "/password_resets", mapOf("email" to userForm.email!!), result.mockSession)
        assertThat(result.response.status).isEqualTo(HttpStatus.FOUND.value())
        assertThat(result.response.redirectedUrl).isEqualTo("/")
        assertThat(result.flashMap.toMap()).isNotEmpty.containsAnyOf(
            entry("flash", mapOf("info" to "view.password-resets.create.mail.sent")),
            entry("flash", mapOf("warning" to "view.password-resets.create.mail.failed")))
    }

    @Test
    fun `存在しないメールアドレスではパスワードリセット要求ができない - メッセージと共にパスワードリセット要求画面が再表示される`() {
        var result = TH.get(mvc, "/password_resets/new")
        result = TH.post(mvc, "/password_resets", mapOf("email" to "invalid"), result.mockSession)
        assertThat(result.response.status).isEqualTo(HttpStatus.OK.value())
        assertThat(result.modelAndView?.viewName).isEqualTo("password_resets/new")
        assertThat(result.modelAndView?.model).isNotEmpty.contains(
            entry("flash", mapOf("danger" to "view.password-resets.create.not-found")))
    }

    @Test
    fun `正しいメールアドレスでも無効なユーザーではパスワードリセット要求ができない - メッセージと共にパスワードリセット要求画面が再表示される`() {
        var result = TH.get(mvc, "/password_resets/new")
        result = TH.post(mvc, "/password_resets", mapOf("email" to nonActivateUserForm.email!!), result.mockSession)
        assertThat(result.response.status).isEqualTo(HttpStatus.OK.value())
        assertThat(result.modelAndView?.viewName).isEqualTo("password_resets/new")
        assertThat(result.modelAndView?.model).isNotEmpty.contains(
            entry("flash", mapOf("danger" to "view.password-resets.create.not-found")))
    }

    @Test
    fun `正しいメールアドレスとリセットトークンならばパスワードリセット画面が表示される`() {
        val resetUrl = resetUrl(userForm)
        val result = TH.get(mvc, resetUrl)
        assertThat(result.response.status).isEqualTo(HttpStatus.OK.value())
        val editPage = TH.parseHtml(result, client)
        assertThat(editPage.titleText).startsWith("Reset password")
        assertThat(editPage.getByXPath<HtmlElement>(
            "//form[@action='${resetPath(resetUrl)}' and @method='post']"))
            .hasSize(1)
        assertThat(editPage.getByXPath<HtmlElement>(
            "//input[@type='hidden' and @name='email' and @value='${userForm.email}']"))
            .hasSize(1)
    }

    @Test
    fun `正しいメールアドレスでも無効なリセットトークンではパスワードリセット画面は表示されない - ルートにリダイレクトされる`() {
        resetUrl(userForm)
        val result = TH.get(mvc, "/password_resets/invalidToken/edit")
        assertThat(result.response.status).isEqualTo(HttpStatus.FOUND.value())
        assertThat(result.response.redirectedUrl).isEqualTo("/")
    }

    @Test
    fun `正しいリセットトークンでも存在しないメールアドレスではパスワードリセット画面は表示されない - ルートにリダイレクトされる`() {
        val resetUrl = resetUrl(userForm)
        val result = TH.get(mvc, resetUrl.replace("michael", "invalid"))
        assertThat(result.response.status).isEqualTo(HttpStatus.FOUND.value())
        assertThat(result.response.redirectedUrl).isEqualTo("/")
    }

    @Test
    fun `正しいメールアドレスとリセットトークンでも無効なユーザーではパスワードリセット画面は表示されない - ルートにリダイレクトされる`() {
        val resetUrl = resetUrl(nonActivateUserForm)
        val result = TH.get(mvc, resetUrl)
        assertThat(result.response.status).isEqualTo(HttpStatus.FOUND.value())
        assertThat(result.response.redirectedUrl).isEqualTo("/")
    }

    @Test
    fun `リセット要求をしていないユーザーはパスワードリセット画面は表示されない - ルートにリダイレクトされる`() {
        val result = TH.get(mvc, "/password_resets/token/edit", mapOf("email" to userForm.email!!))
        assertThat(result.response.status).isEqualTo(HttpStatus.FOUND.value())
        assertThat(result.response.redirectedUrl).isEqualTo("/")
    }

    @Test
    fun `正しいメールアドレスとリセットトークンでも期限切れならばパスワードリセット画面は表示されない - メッセージと共にパスワードリセット要求画面にリダイレクトされる`() {
        val resetUrl = resetUrl(userForm)
        // リセットメール送信時間を2時間前に設定
        user.resetSentAt = Date.from(Instant.now().minus(Duration.ofHours(2L)))
        us.save(user)

        val result = TH.get(mvc, resetUrl)
        assertThat(result.response.status).isEqualTo(HttpStatus.FOUND.value())
        assertThat(result.response.redirectedUrl).isEqualTo("/password_resets/new")
        assertThat(result.flashMap.toMap()).contains(
            entry("flash", mapOf("danger" to "view.password-resets.reset.expired")))
    }

    @Test
    fun `正しいメールアドレスとリセットトークン、パスワードならばパスワード更新が実行される - メッセージと共にユーザー情報画面にリダイレクトされる`() {
        val before = user.passwordDigest
        val resetUrl = resetUrl(userForm)
        val result = TH.post(mvc, resetPath(resetUrl),
            mapOf("email" to userForm.email!!, "password" to "update", "passwordConfirmation" to "update"))
        assertThat(result.response.status).isEqualTo(HttpStatus.FOUND.value())
        assertThat(result.response.redirectedUrl).isEqualTo("/login")
        assertThat(result.flashMap.toMap()).contains(
            entry("flash", mapOf("success" to "view.password-resets.update.success")))
        assertThat(before).isNotEqualTo(us.findById(userForm.id!!)!!.passwordDigest)
    }

    @Test
    fun `存在しないメールアドレスならばパスワード更新は実行されない - ルートにリダイレクトされる`() {
        val before = user.passwordDigest
        val resetUrl = resetUrl(userForm)
        val result = TH.post(mvc, resetPath(resetUrl),
            mapOf("email" to "invalid", "password" to "update", "passwordConfirmation" to "update"))
        assertThat(result.response.status).isEqualTo(HttpStatus.FOUND.value())
        assertThat(result.response.redirectedUrl).isEqualTo("/")
        assertThat(before).isEqualTo(us.findById(userForm.id!!)!!.passwordDigest)
    }

    @Test
    fun `無効なリセットトークンならばパスワード更新は実行されない - ルートにリダイレクトされる`() {
        val before = user.passwordDigest
        resetUrl(userForm)
        val result = TH.post(mvc, "/password_resets/invalid",
            mapOf("email" to userForm.email!!, "password" to "update", "passwordConfirmation" to "update"))
        assertThat(result.response.status).isEqualTo(HttpStatus.FOUND.value())
        assertThat(result.response.redirectedUrl).isEqualTo("/")
        assertThat(before).isEqualTo(us.findById(userForm.id!!)!!.passwordDigest)
    }

    @Test
    fun `正しいメールアドレスとリセットトークン、パスワードでも無効なユーザーではパスワード更新は実行されない - ルートにリダイレクトされる`() {
        val before = user.passwordDigest
        val resetUrl = resetUrl(nonActivateUserForm)
        val result = TH.post(mvc, resetPath(resetUrl),
            mapOf("email" to nonActivateUserForm.email!!, "password" to "update", "passwordConfirmation" to "update"))
        assertThat(result.response.status).isEqualTo(HttpStatus.FOUND.value())
        assertThat(result.response.redirectedUrl).isEqualTo("/")
        assertThat(before).isEqualTo(us.findById(userForm.id!!)!!.passwordDigest)
    }

    @Test
    fun `無効なパスワードならばパスワード更新は実行されない - メッセージと共にパスワードリセット画面が再表示される`() {
        val passwords = mapOf("" to "", "short" to "short", "mismatch" to "miss")
        passwords.forEach { (password, passwordConfirmation) ->
            val before = user.passwordDigest
            val resetUrl = resetUrl(userForm)
            val result = TH.post(mvc, resetPath(resetUrl),
                mapOf("email" to userForm.email!!, "password" to password, "passwordConfirmation" to passwordConfirmation))
            assertThat(result.response.status).isEqualTo(HttpStatus.OK.value())
            assertThat(result.modelAndView?.viewName).isEqualTo("password_resets/edit")
            val resetForm = TH.parseHtml(result, client).forms[0]
            assertThat(resetForm.getByXPath<HtmlElement>(".//div[@class='alert alert-danger']")).hasSize(1)
            assertThat(before).isEqualTo(us.findById(userForm.id!!)!!.passwordDigest)
        }
    }

    @Test
    fun `正しいメールアドレスとリセットトークン、パスワードでも期限切れならパスワード更新は実行されない - メッセージと共にパスワードリセット要求画面にリダイレクトされる`() {
        val before = user.passwordDigest
        val resetUrl = resetUrl(userForm)
        // リセットメール送信時間を2時間前に設定
        user.resetSentAt = Date.from(Instant.now().minus(Duration.ofHours(2L)))
        us.save(user)
        val result = TH.post(mvc, resetPath(resetUrl),
            mapOf("email" to userForm.email!!, "password" to "update", "passwordConfirmation" to "update"))
        assertThat(result.response.status).isEqualTo(HttpStatus.FOUND.value())
        assertThat(result.response.redirectedUrl).isEqualTo("/password_resets/new")
        assertThat(result.flashMap.toMap()).contains(
            entry("flash", mapOf("danger" to "view.password-resets.reset.expired")))
        assertThat(before).isEqualTo(us.findById(userForm.id!!)!!.passwordDigest)
    }

    @Test
    fun `リセット要求をしていないユーザーからの更新は実行されない - ルートにリダイレクトされる`() {
        val before = user.passwordDigest
        val result = TH.post(mvc, "/password_resets/token",
            mapOf("email" to userForm.email!!, "password" to "update", "passwordConfirmation" to "update"))
        assertThat(result.response.status).isEqualTo(HttpStatus.FOUND.value())
        assertThat(result.response.redirectedUrl).isEqualTo("/")
        assertThat(before).isEqualTo(us.findById(userForm.id!!)!!.passwordDigest)
    }

    @Test
    fun `2回は更新できない - ルートにリダイレクトされる`() {
        val before = user.passwordDigest
        val resetUrl = resetUrl(userForm)
        var result = TH.post(mvc, resetPath(resetUrl),
            mapOf("email" to userForm.email!!, "password" to "update", "passwordConfirmation" to "update"))
        assertThat(result.response.status).isEqualTo(HttpStatus.FOUND.value())
        assertThat(result.response.redirectedUrl).isEqualTo("/login")
        assertThat(result.flashMap.toMap()).contains(
            entry("flash", mapOf("success" to "view.password-resets.update.success")))
        assertThat(before).isNotEqualTo(us.findById(userForm.id!!)!!.passwordDigest)

        result = TH.post(mvc, resetPath(resetUrl),
            mapOf("email" to userForm.email!!, "password" to "update2", "passwordConfirmation" to "update2"))
        assertThat(result.response.status).isEqualTo(HttpStatus.FOUND.value())
        assertThat(result.response.redirectedUrl).isEqualTo("/")
    }


    private fun resetUrl(userForm: UserForm): String {
        userForm.createResetToken()
        userForm.save()
        return userForm.authenticationUrl(AuthenticationType.PASSWORD_RESET,
                UriComponentsBuilder.fromHttpUrl("http://localhost"))
    }

    private fun resetPath(resetUrl: String): String = URI.create(resetUrl).resolve(".").path.removeSuffix("/")
}
