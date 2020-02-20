package com.example.sbtutorial.integration

import com.example.sbtutorial.BaseTestSetup
import com.example.sbtutorial.controller.ErrorHandleController
import com.example.sbtutorial.controller.SessionsController
import com.example.sbtutorial.controller.UsersController
import com.example.sbtutorial.mockSession
import com.example.sbtutorial.helper.TestHelper as TH
import com.example.sbtutorial.model.user.User
import com.example.sbtutorial.model.user.UserForm
import com.example.sbtutorial.model.user.UsersService
import com.example.sbtutorial.toURL
import com.gargoylesoftware.htmlunit.WebClient
import org.assertj.core.api.Assertions.*
import org.hamcrest.Matchers.*
import org.junit.jupiter.api.BeforeEach
import org.junit.jupiter.api.Test
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest
import org.springframework.http.HttpStatus
import org.springframework.mock.web.MockHttpSession
import org.springframework.security.test.web.servlet.request.SecurityMockMvcRequestPostProcessors
import org.springframework.security.web.savedrequest.SavedRequest
import org.springframework.test.web.servlet.MockMvc
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*
import org.springframework.test.web.servlet.result.MockMvcResultMatchers.*

@WebMvcTest(UsersController::class, ErrorHandleController::class, SessionsController::class)
class AuthorizationTests @Autowired constructor(
    private val us: UsersService, private val mvc: MockMvc,
    private val client: WebClient): BaseTestSetup(client) {

    private lateinit var user: User
    private lateinit var otherUser: User

    @BeforeEach
    override fun setUp() {
        super.setUp()
        user = us.findByEmail("michael@example.com")!!
        otherUser = us.findByEmail("duchess@example.gov")!!
    }

    @Test
    fun `ログインユーザーは自分のページにアクセス・更新が可能`() {
        var result = TH.loginAs(mvc, user, false)

        // ユーザー情報画面
        result = TH.get(mvc, "/users/${user.id}", emptyMap(), result.request.mockSession)
        assertThat(result.response.status).isEqualTo(HttpStatus.OK.value())
        assertThat(result.response.contentAsString).contains(user.name)

        // ユーザー編集画面
        result = TH.get(mvc, "/users/${user.id}/edit", emptyMap(), result.request.mockSession)
        assertThat(result.response.status).isEqualTo(HttpStatus.OK.value())
        assertThat(result.response.contentAsString).contains(user.name)

        // ユーザー編集実行
        result = TH.post(mvc, "/users/${user.id}",
            mapOf("name" to "updated", "email" to "updated@example.com",
                  "password" to "updated", "passwordConfirmation" to "updated"),
            result.request.session as MockHttpSession)
        assertThat(result.response.status).isEqualTo(HttpStatus.FOUND.value())
        assertThat(result.response.redirectedUrl).isEqualTo("/users/${user.id}")
    }

    @Test
    fun `ログインの有無を問わず他人のユーザー情報ページにアクセス出来る`() {
        // ログイン無しでユーザー情報画面アクセス
        var result = TH.get(mvc, "/users/${user.id}", emptyMap())
        assertThat(result.response.status).isEqualTo(HttpStatus.OK.value())

        // ログインありでユーザー情報画面アクセス
        result = TH.loginAs(mvc, otherUser, false)
        result = TH.get(mvc, "/users/${user.id}", emptyMap(), result.request.session as MockHttpSession)
        assertThat(result.response.status).isEqualTo(HttpStatus.OK.value())
    }

    @Test
    fun `ログインしていないユーザーは他人の編集ページにアクセス出来ないし、更新も出来ない`() {
        // ユーザー編集画面
        var result = TH.get(mvc, "/users/${user.id}/edit", emptyMap())
        assertThat(result.response.status).isEqualTo(HttpStatus.FOUND.value())
        assertThat(result.response.redirectedUrl.toURL()).hasPath("/login")

        // ユーザー編集実行
        result = TH.post(mvc, "/users/${user.id}",
            mapOf("name" to "crack", "email" to "crack@example.com",
                  "password" to "cracked", "passwordConfirmation" to "cracked"),
            result.request.session as MockHttpSession)
        assertThat(result.response.status).isEqualTo(HttpStatus.FOUND.value())
        assertThat(result.response.redirectedUrl.toURL()).hasPath("/login")
    }

    @Test
    fun `ログインしていても他人の編集ページにはアクセス出来ないし、更新も出来ない`() {
        var result = TH.loginAs(mvc, otherUser, false)

        // ユーザー編集画面
        result = TH.get(mvc, "/users/${user.id}/edit", emptyMap(), result.request.mockSession)
        assertThat(result.response.status).isEqualTo(HttpStatus.FORBIDDEN.value())
        assertThat(result.response.forwardedUrl).isEqualTo("/error/access-denied")
        result = TH.get(mvc, result.response.forwardedUrl!!, emptyMap(), result.request.mockSession)
        assertThat(result.response.status).isEqualTo(HttpStatus.FOUND.value())
        assertThat(result.response.redirectedUrl).isEqualTo("/")

        // ユーザー編集実行
        result = TH.post(mvc, "/users/${user.id}",
            mapOf("name" to "crack", "email" to "crack@example.com",
                  "password" to "cracked", "passwordConfirmation" to "cracked"),
            result.request.session as MockHttpSession)
        assertThat(result.response.status).isEqualTo(HttpStatus.FORBIDDEN.value())
        assertThat(result.response.forwardedUrl).isEqualTo("/error/access-denied")
        result = TH.post(mvc, result.response.forwardedUrl!!, emptyMap(), result.request.mockSession)
        assertThat(result.response.status).isEqualTo(HttpStatus.FOUND.value())
        assertThat(result.response.redirectedUrl).isEqualTo("/")
    }

    @Test
    fun `SavedRequestのテスト`() {
        // getアクセスは保存されているはず
        var result = TH.get(mvc, "/users/${user.id}/edit", mapOf("name" to "updated", "email" to "updated@example.com"))

        // ログインしてみる
        result = TH.loginAs(mvc, user, false, result.request.mockSession)
        result = mvc.perform(post(result.response.forwardedUrl!!)
            .session(result.request.mockSession)
            .with(SecurityMockMvcRequestPostProcessors.csrf())
        )// sessionAttributeにSavedRequestのキーがあるはず
            .andExpect(request().sessionAttribute("SPRING_SECURITY_SAVED_REQUEST",
                        isA<SavedRequest>(SavedRequest::class.java)))
            .andReturn()
        // SavedRequestがある場合はURIが返ってくるのでendsWithで判定
        assertThat(result.response.redirectedUrl.toURL()).hasPath("/users/${user.id}/edit")


        // postアクセスは保存されている？
        // => 保存されていなかった
        result = TH.post(mvc, "/users/${user.id}", mapOf("name" to "updated", "email" to "updated@example.com"))

        // ログインしてみる
        result = TH.loginAs(mvc, user, false, result.request.mockSession)
        result = mvc.perform(post(result.response.forwardedUrl!!)
            .session(result.request.mockSession)
            .with(SecurityMockMvcRequestPostProcessors.csrf())
        )// sessionAttributeにSavedRequestのキーはない事を想定
            .andExpect(request().sessionAttributeDoesNotExist("SPRING_SECURITY_SAVED_REQUEST"))
            .andReturn()
        // SavedRequestがない場合はコントローラで設定した値が返ってくるのでisEqualToで判定
        assertThat(result.response.redirectedUrl).isEqualTo("/users/${user.id}")
    }

    @Test
    fun `AuthProperties_AdminでAdminユーザーが作られる`() {
        val admin = us.findByEmail("admin@example.com")
        assertThat(admin).isNotNull.hasFieldOrPropertyWithValue("admin", true)
    }
}
