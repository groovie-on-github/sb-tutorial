package com.example.sbtutorial.integration

import com.example.sbtutorial.BaseTestSetup
import com.example.sbtutorial.controller.PasswordResetsController
import com.example.sbtutorial.model.user.AuthenticationType
import com.example.sbtutorial.model.user.User
import com.example.sbtutorial.model.user.UserForm
import com.example.sbtutorial.model.user.UsersService
import com.gargoylesoftware.htmlunit.WebClient
import com.gargoylesoftware.htmlunit.html.HtmlElement
import org.assertj.core.api.Assertions.*
import org.hamcrest.Matchers.*
import org.junit.jupiter.api.BeforeEach
import org.junit.jupiter.api.Test
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest
import org.springframework.test.web.servlet.MockMvc
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*
import org.springframework.test.web.servlet.result.MockMvcResultMatchers.*
import org.springframework.web.util.UriComponentsBuilder
import java.net.URI
import java.time.Duration
import java.time.Instant
import java.util.*
import com.example.sbtutorial.helper.TestHelper as TH

@WebMvcTest(PasswordResetsController::class)
class PasswordResetsTests @Autowired constructor(
    private val mvc: MockMvc, private val client: WebClient, private val us: UsersService): BaseTestSetup(client) {

    private lateinit var user: User
    private lateinit var userForm: UserForm

    @BeforeEach
    override fun setUp() {
        super.setUp()
        user = us.findByEmail("michael@example.com")!!
        userForm = UserForm(us, user)
    }

    @Test
    fun `password resets`() {
        var result = TH.get(mvc, "/password_resets/new")
        assertThat(result.modelAndView?.viewName).isEqualTo("password_resets/new")

        // メールアドレスが無効
        result = TH.post(mvc, "/password_resets", mapOf("email" to ""))
        assertThat(result.modelAndView?.model).containsKey("flash")
        assertThat(result.modelAndView?.viewName).isEqualTo("password_resets/new")

        // メールアドレスが有効
        val before = user.resetDigest
        result = TH.post(mvc, "/password_resets", mapOf("email" to user.email))
        assertThat(user.resetDigest).isNotEqualTo(before)
        assertThat(result.flashMap.toMap()).isNotEmpty
        assertThat(result.response.redirectedUrl).isEqualTo("/")

        // パスワード再設定フォームのテスト
        val resetUrl = resetUrl(userForm)
        // メールアドレスが無効
        result = TH.get(mvc, resetUrl.replace("michael%40example.com", ""))
        assertThat(result.response.redirectedUrl).isEqualTo("/")

        // 無効なユーザー
        us.save(user.apply { isActivated = false })
        result = TH.get(mvc, resetUrl)
        assertThat(result.response.redirectedUrl).isEqualTo("/")

        // メールアドレスが有効で、トークンが無効
        us.save(user.apply { isActivated = true })
        result = TH.get(mvc, "/password_resets/wrong_token/edit")
        assertThat(result.response.redirectedUrl).isEqualTo("/")

        // メールアドレスもトークンも有効
        result = TH.get(mvc, resetUrl)
        assertThat(result.modelAndView?.viewName).isEqualTo("password_resets/edit")
        assertThat(TH.parseHtml(result, client).getByXPath<HtmlElement>(
            "//input[@name='email' and @type='hidden' and @value='${user.email}']"))
            .hasSize(1)

        val resetPath = resetPath(resetUrl)
        // 無効なパスワードとパスワード確認
        result = TH.post(mvc, resetPath,
            mapOf("email" to user.email, "password" to "foobaz", "passwordConfirmation" to "barquux"))
        assertThat(TH.parseHtml(result, client).getByXPath<HtmlElement>("//div[@id='error_explanation']"))
            .hasSize(1)

        // パスワードが空
        result = TH.post(mvc, resetPath,
            mapOf("email" to user.email, "password" to "", "passwordConfirmation" to ""))
        assertThat(TH.parseHtml(result, client).getByXPath<HtmlElement>("//div[@id='error_explanation']"))
            .hasSize(1)

        // 有効なパスワードとパスワード確認
        assertThat(user.resetDigest).isNotNull()

        result = TH.post(mvc, resetPath,
            mapOf("email" to user.email, "password" to "foobaz", "passwordConfirmation" to "foobaz"))
        assertThat(result.flashMap.toMap()).isNotEmpty
        assertThat(result.response.redirectedUrl).isEqualTo("/login")

        assertThat(user.resetDigest).isNull()
    }

    @Test
    fun `expired token`() {
        TH.get(mvc, "/password_resets/new")
        TH.post(mvc, "/password_resets", mapOf("email" to user.email))
        val resetPath = resetPath(resetUrl(userForm))

        us.save(user.apply { resetSentAt = Date.from(Instant.now().minus(Duration.ofHours(3))) })

        var result = TH.post(mvc, resetPath,
            mapOf("email" to user.email, "password" to "foobar", "passwordConfirmation" to "foobar"))
        result = mvc.perform(get(result.response.redirectedUrl!!).flashAttrs(result.flashMap)).andReturn()
        assertThat(TH.parseHtml(result, client).querySelector<HtmlElement>("div.alert.alert-danger"))
            .satisfies{ assertThat(it.textContent).contains("expired") }
        assertThat(TH.parseHtml(result, client).body.asText()).contains("expired")
    }


    private fun resetUrl(userForm: UserForm): String {
        userForm.createResetToken()
        userForm.save()
        return userForm.authenticationUrl(AuthenticationType.PASSWORD_RESET,
            UriComponentsBuilder.fromHttpUrl("http://localhost"))
    }

    private fun resetPath(resetUrl: String): String = URI.create(resetUrl).resolve(".").path.removeSuffix("/")
}
