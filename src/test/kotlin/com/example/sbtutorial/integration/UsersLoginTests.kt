package com.example.sbtutorial.integration

import com.example.sbtutorial.BaseTestSetup
import com.example.sbtutorial.controller.SessionsController
import com.example.sbtutorial.controller.StaticPagesController
import com.example.sbtutorial.controller.UsersController
import com.example.sbtutorial.helper.TestHelper as TH
import com.example.sbtutorial.model.user.User
import com.example.sbtutorial.model.user.UsersService
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

@WebMvcTest(SessionsController::class, StaticPagesController::class, UsersController::class)
class UsersLoginTests @Autowired constructor(
    private val us: UsersService,
    private val mvc: MockMvc,
    private val client: WebClient): BaseTestSetup(client) {

    private lateinit var user: User

    @BeforeEach
    override fun setUp() {
        super.setUp()
        user = us.findByEmail("example@railstutorial.org")!!
    }

    @Test
    fun `login with invalid information`() {
        // ログイン画面表示
        var result = mvc.perform(get("/login"))
            .andExpect(status().isOk)
            .andExpect(view().name("/sessions/new"))
            .andExpect(model().attribute("title_key",
                `is`("view.sessions.new.title")))
            .andReturn()

        var sessionsNewPage = TH.parseHtml(result.response.contentAsString, client)
        // ログインフォームの存在チェック
        assertThat(sessionsNewPage.getByXPath<HtmlElement>("//form[@action='/login' and @method='post']"))
            .hasSize(1)
        // ヘッダーメニューのリンクチェック
        TH.checkHeaderMenu(sessionsNewPage, false)

        // 無効なログイン情報送信
        // エラー時は"/login-error"にフォワードされる
        // WebSecurityConfigクラスで明示的に設定している
        result = mvc.perform(post("/login")
            .param("email", "")
            .param("password", "")
            .with(SecurityMockMvcRequestPostProcessors.csrf())
        )
            .andExpect(status().isOk)
            .andExpect(forwardedUrl("/login-error"))
            .andReturn()
        result = mvc.perform(post(result.response.forwardedUrl!!)
            .session(result.request.session as MockHttpSession)
            .with(SecurityMockMvcRequestPostProcessors.csrf())
        )
            .andExpect(status().is3xxRedirection)
            .andExpect(redirectedUrl("/login"))
            .andExpect(flash().attribute("flash",
                hasEntry("danger", "view.sessions.new.login-error")))
            .andReturn()

        // エラーハンドラで"/login"にリダイレクトされる
        result = mvc.perform(get(result.response.redirectedUrl!!)
            .session(result.request.session as MockHttpSession)
            .flashAttrs(result.flashMap)
        )
            .andExpect(status().isOk)
            .andExpect(view().name("/sessions/new"))
            .andExpect(model().attribute("title_key",
                `is`("view.sessions.new.title")))
            .andReturn()

        sessionsNewPage = TH.parseHtml(result.response.contentAsString, client)
        // フラッシュメッセージのチェック
        assertThat(sessionsNewPage.getByXPath<HtmlElement>(
            "/html/body/div/div[@class='alert alert-danger']")
        ).hasSize(1)
        // ヘッダーメニューのリンクチェック
        TH.checkHeaderMenu(sessionsNewPage, false)

        // 上のflashメッセージはredirect-flashスコープだという証明
        result = mvc.perform(get("/"))
            .andExpect(status().isOk)
            .andExpect(flash().attributeCount(0))
            .andExpect(model().attributeDoesNotExist("flash"))
            .andReturn()

        val indexPage = TH.parseHtml(result.response.contentAsString, client)
        // フラッシュメッセージのチェック
        assertThat(indexPage.getByXPath<HtmlElement>(
            "/html/body/div/div[contains(@class, 'alert alert-')]")
        ).isEmpty()
        // ヘッダーメニューのリンクチェック
        TH.checkHeaderMenu(indexPage, false)
    }

    @Test
    fun `login with valid information followed by logout`() {
        // ログイン画面表示
        var result = mvc.perform(get("/login"))
            .andExpect(status().isOk)
            .andExpect(view().name("/sessions/new"))
            .andExpect(model().attribute("title_key",
                `is`("view.sessions.new.title")))
            .andReturn()

        val sessionsNewPage = TH.parseHtml(result.response.contentAsString, client)
        // ログインフォームの存在チェック
        assertThat(sessionsNewPage.getByXPath<HtmlElement>("//form[@action='/login' and @method='post']"))
            .hasSize(1)
        // ヘッダーメニューのリンクチェック
        TH.checkHeaderMenu(sessionsNewPage, false)

        // 正常なログイン情報送信
        // ログイン成功時は"/login-success"にフォワードされる
        // WebSecurityConfigクラスで明示的に設定している
        result = mvc.perform(post("/login")
            .param("email", user.email)
            .param("password", "password")
            .with(SecurityMockMvcRequestPostProcessors.csrf())
        )
            .andExpect(status().isOk)
            .andExpect(forwardedUrl("/login-success"))
            .andReturn()
        result = mvc.perform(post(result.response.forwardedUrl!!)
            .session(result.request.session as MockHttpSession)
            .with(SecurityMockMvcRequestPostProcessors.csrf())
        )
            .andExpect(status().is3xxRedirection)
            .andExpect(redirectedUrl("/users/${user.id}"))
            .andReturn()

        // 成功時ハンドラでユーザー表示画面にリダイレクトされる
        result = mvc.perform(get(result.response.redirectedUrl!!)
            .session(result.request.session as MockHttpSession)
        )
            .andExpect(status().isOk)
            .andReturn()

        val usersShowPage = TH.parseHtml(result.response.contentAsString, client)
        // ヘッダーメニューのリンクチェック
        TH.checkHeaderMenu(usersShowPage, true, user.id)

        // ログアウトする
        // ログアウト成功時は"/logout-success"にリダイレクトされる
        // WebSecurityConfigクラスで明示的に設定している
        result = mvc.perform(post("/logout")
            .session(result.request.session as MockHttpSession)
            .with(SecurityMockMvcRequestPostProcessors.csrf())
        )
            .andExpect(status().is3xxRedirection)
            .andExpect(redirectedUrl("/logout-success"))
            .andReturn()
        result = mvc.perform(get(result.response.redirectedUrl!!)
            .session(result.request.session as MockHttpSession)
        )
            .andExpect(status().is3xxRedirection)
            .andExpect(redirectedUrl("/"))
            .andReturn()

        // 成功時ハンドラでルートにリダイレクトされる
        result = mvc.perform(get(result.response.redirectedUrl!!)
            .session(result.request.session as MockHttpSession)
        )
            .andExpect(status().isOk)
            .andReturn()

        val indexPage = TH.parseHtml(result.response.contentAsString, client)
        // ヘッダーメニューのリンクチェック
        TH.checkHeaderMenu(indexPage, false)
    }
}
