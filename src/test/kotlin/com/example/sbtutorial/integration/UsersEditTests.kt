package com.example.sbtutorial.integration

import com.example.sbtutorial.BaseTestSetup
import com.example.sbtutorial.controller.ErrorHandleController
import com.example.sbtutorial.controller.SessionsController
import com.example.sbtutorial.controller.UsersController
import com.example.sbtutorial.mockSession
import com.example.sbtutorial.helper.TestHelper as TH
import com.example.sbtutorial.model.user.User
import com.example.sbtutorial.model.user.UsersService
import com.example.sbtutorial.toURL
import com.gargoylesoftware.htmlunit.WebClient
import com.gargoylesoftware.htmlunit.html.HtmlElement
import org.assertj.core.api.Assertions.*
import org.hamcrest.Matchers.*
import org.junit.jupiter.api.BeforeEach
import org.junit.jupiter.api.Test
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest
import org.springframework.mock.web.MockHttpSession
import org.springframework.security.test.web.servlet.request.SecurityMockMvcRequestPostProcessors
import org.springframework.test.web.servlet.MockMvc
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*
import org.springframework.test.web.servlet.result.MockMvcResultMatchers.*

@WebMvcTest(UsersController::class, ErrorHandleController::class, SessionsController::class)
class UsersEditTests @Autowired constructor(private val us: UsersService,
    private val mvc: MockMvc, private val client: WebClient): BaseTestSetup(client) {

    private lateinit var user: User
    private lateinit var otherUser: User

    @BeforeEach
    override fun setUp() {
        super.setUp()
        user = us.findByEmail("michael@example.com")!!
        otherUser = us.findByEmail("duchess@example.gov")!!
    }

    @Test
    fun `unsuccessful edit`() {
        // ログインする
        var result = TH.loginAs(mvc, user, false)

        // 編集画面表示
        result = mvc.perform(get("/users/${user.id}/edit")
            .session(result.request.mockSession)
        )
            .andExpect(status().isOk)
            .andExpect(view().name("users/edit"))
            .andExpect(model().attribute("title_key", "view.users.edit.title"))
            .andReturn()
        var editPage = TH.parseHtml(result, client)
        var editForm = editPage.forms.first { it.actionAttribute == "/users/${user.id}" }
        assertThat(editForm).satisfies {
            assertThat(it.methodAttribute).isEqualTo("post")
        }

        // 無効な情報で更新実行 -> 編集画面にエラー表示
        result = mvc.perform(post(editForm.actionAttribute)
            .param("name", "")
            .param("email", "foo@invalid")
            .param("password", "foo")
            .param("password_confirmation", "bar")
            .session(result.request.mockSession)
            .with(SecurityMockMvcRequestPostProcessors.csrf())
        )
            .andExpect(status().isOk)
            .andExpect(view().name("users/edit"))
            .andExpect(model().attribute("title_key", "view.users.edit.title"))
            .andReturn()
        editPage = TH.parseHtml(result, client)
        editForm = editPage.forms.first { it.actionAttribute == "/users/${user.id}" }
        assertThat(editForm.getByXPath<HtmlElement>("div[@id='error_explanation']"))
            .hasSize(1)
        assertThat(editForm.getByXPath<HtmlElement>("div/div[@class='alert alert-danger']"))
            .hasSize(1)
            .satisfies { assertThat(it[0].textContent.trim()).isEqualTo("The form contains 4 errors") }
    }

    @Test
    fun `successful edit`() {
        // ログインする
        var result = TH.loginAs(mvc, user, false)

        // 編集画面表示
        result = mvc.perform(get("/users/${user.id}/edit")
            .session(result.request.mockSession)
        )
            .andExpect(status().isOk)
            .andExpect(view().name("users/edit"))
            .andExpect(model().attribute("title_key", "view.users.edit.title"))
            .andReturn()
        val editPage = TH.parseHtml(result, client)
        val editForm = editPage.forms.first { it.actionAttribute == "/users/${user.id}" }
        assertThat(editForm).satisfies {
            assertThat(it.actionAttribute).isEqualTo("/users/${user.id}")
            assertThat(it.methodAttribute).isEqualTo("post")
        }

        // 正しい情報(パスワード変更なし)で更新実行
        // -> ユーザー情報画面にリダイレクト(flashメッセージ付き)
        val name  = "Foo Bar"
        val email = "foo@bar.com"
        result = mvc.perform(post(editForm.actionAttribute)
            .param("name", name)
            .param("email", email)
            .param("password", "")
            .param("passwordConfirmation", "")
            .session(result.request.mockSession)
            .with(SecurityMockMvcRequestPostProcessors.csrf())
        )
            .andExpect(status().is3xxRedirection)
            .andExpect(redirectedUrl("/users/${user.id}"))
            .andExpect(flash().attribute("flash",
                hasEntry("success", "view.users.edit.updated")))
            .andReturn()
        assertThat(result.flashMap.toMap()).isNotEmpty

        // 情報が更新されたか確認
        var found = us.findById(user.id!!)
        assertThat(found).extracting("name", "email")
            .containsExactly(name, email.toLowerCase())

        // パスワードを変更する
        val digest = found?.passwordDigest
        result = mvc.perform(post(editForm.actionAttribute)
            .param("name", name)
            .param("email", email)
            .param("password", "foobar")
            .param("passwordConfirmation", "foobar")
            .session(result.request.mockSession)
            .with(SecurityMockMvcRequestPostProcessors.csrf())
        )
            .andExpect(status().is3xxRedirection)
            .andExpect(redirectedUrl("/users/${user.id}"))
            .andExpect(flash().attribute("flash",
                hasEntry("success", "view.users.edit.updated")))
            .andReturn()
        assertThat(result.flashMap.toMap()).isNotEmpty

        // 情報が更新されたか確認
        found = us.findById(user.id!!)
        assertThat(found?.passwordDigest).isNotNull()
            .isNotEqualTo(digest)
    }

    @Test
    fun `should redirect edit when not logged in`() {
        // ログインせずに編集画面表示
        mvc.perform(get("/users/${user.id}/edit"))
            .andExpect(status().is3xxRedirection)
            .andExpect(redirectedUrlPattern("**/login"))
            .andReturn()
    }

    @Test
    fun `should redirect update when not logged in`() {
        // ログインせずに更新実行
        mvc.perform(post("/users/${user.id}")
            .param("name", user.name)
            .param("email", user.email)
            .with(SecurityMockMvcRequestPostProcessors.csrf())
        )
            .andExpect(status().is3xxRedirection)
            .andExpect(redirectedUrlPattern("**/login"))
            .andReturn()
    }

    @Test
    fun `should redirect edit when logged in as wrong user`() {
        // ログインする
        var result = TH.loginAs(mvc, otherUser, false)

        // 他人の編集画面にアクセスする -> 最終的にルートにリダイレクトされる
        result = mvc.perform(get("/users/${user.id}/edit")
            .session(result.request.mockSession)
        )
            .andExpect(status().isForbidden)
            .andExpect(forwardedUrl("/error/access-denied"))
            .andReturn()
        mvc.perform(get(result.response.forwardedUrl!!)
            .session(result.request.mockSession)
        )
            .andExpect(status().is3xxRedirection)
            .andExpect(redirectedUrl("/"))
    }

    @Test
    fun `should redirect update when logged in as wrong user`() {
        // ログインする
        var result = TH.loginAs(mvc, otherUser, false)

        // 他人の情報にアクセスする -> 最終的にルートにリダイレクトされる
        result = mvc.perform(post("/users/${user.id}")
            .param("name", otherUser.name)
            .param("email", otherUser.email)
            .session(result.request.mockSession)
            .with(SecurityMockMvcRequestPostProcessors.csrf())
        )
            .andExpect(status().isForbidden)
            .andExpect(forwardedUrl("/error/access-denied"))
            .andReturn()
        mvc.perform(post(result.response.forwardedUrl!!)
            .session(result.request.mockSession)
            .with(SecurityMockMvcRequestPostProcessors.csrf())
        )
            .andExpect(status().is3xxRedirection)
            .andExpect(redirectedUrl("/"))
    }

    @Test
    fun `successful edit with friendly forwarding`() {
        // ログイン前に編集画面にアクセスする => 承認が必要なのでログイン画面にリダイレクトされる
        var result = TH.get(mvc, "/users/${user.id}/edit", emptyMap())
        assertThat(result.response.redirectedUrl.toURL()).hasPath("/login")

        // ログインする => ログイン前にアクセスしたページにリダイレクトされる
        result = TH.loginAs(mvc, user, false, result.request.mockSession)
        result = TH.post(mvc, result.response.forwardedUrl!!, emptyMap(), result.request.mockSession)
        assertThat(result.response.redirectedUrl.toURL()).hasPath("/users/${user.id}/edit")
        assertThat(result.request.mockSession.attributeNames.toList())
            .contains("SPRING_SECURITY_SAVED_REQUEST")

        // 認証された＆本人なので編集が出来る
        val name = "Foo Bar"
        val email = "foo@bar.com"
        result = TH.post(mvc, "/users/${user.id}", mapOf(
            "name" to name, "email" to email,
            "password" to "", "passwordConfirmation" to ""),
            result.request.mockSession)
        assertThat(result.response.redirectedUrl).isEqualTo("/users/${user.id}")
        // 編集後の検証
        val found = us.findById(user.id!!)
        assertThat(found).extracting("name", "email")
            .containsExactly(name, email)

        // 普通にログインした場合、ユーザー情報画面にリダイレクトされる
        result = TH.loginAs(mvc, user, false)
        result = TH.post(mvc, result.response.forwardedUrl!!, emptyMap(), result.request.mockSession)
        assertThat(result.response.redirectedUrl).isEqualTo("/users/${user.id}")
        assertThat(result.request.mockSession.attributeNames.toList())
            .doesNotContain("SPRING_SECURITY_SAVED_REQUEST")
    }
}
