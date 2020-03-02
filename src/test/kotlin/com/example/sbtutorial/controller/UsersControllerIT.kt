package com.example.sbtutorial.controller

import com.example.sbtutorial.BaseTestSetup
import com.example.sbtutorial.mockSession
import com.example.sbtutorial.model.user.User
import com.example.sbtutorial.model.user.UsersService
import com.example.sbtutorial.toURL
import com.gargoylesoftware.htmlunit.WebClient
import com.gargoylesoftware.htmlunit.html.HtmlElement
import com.gargoylesoftware.htmlunit.html.HtmlPage
import org.assertj.core.api.Assertions.*
import org.junit.jupiter.api.BeforeEach
import org.junit.jupiter.api.Test
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest
import org.springframework.http.HttpStatus
import org.springframework.mock.web.MockHttpSession
import org.springframework.test.web.servlet.MockMvc
import com.example.sbtutorial.helper.TestHelper as TH

@WebMvcTest(UsersController::class, ErrorHandleController::class)
class UsersControllerIT @Autowired constructor(
    private val mvc: MockMvc, private val client: WebClient,
    private val us: UsersService): BaseTestSetup(client) {

    private lateinit var user: User
    private lateinit var otherUser: User

    @BeforeEach
    override fun setUp() {
        super.setUp()

        user = us.findByEmail("michael@example.com")!!
        otherUser = us.findByEmail("duchess@example.gov")!!
    }

    @Test
    fun `should get new`() {
        val page = client.getPage<HtmlPage>("/signup")
        assertThat(page.webResponse.statusCode).isEqualTo(HttpStatus.OK.value())
    }

    @Test
    fun `should redirect index when not logged in`() {
        val result = TH.get(mvc, "/users", emptyMap())
        assertThat(result.response.redirectedUrl).endsWith("/login")
    }

    @Test
    fun `should not allow the admin attribute to be edited via the web`() {
        var result = TH.loginAs(mvc, otherUser, false)

        val before = otherUser.passwordDigest
        assertThat(otherUser.isAdmin).isFalse()

        result = TH.post(mvc, "/users/${otherUser.id}", mapOf(
            "password" to "password2",
            "passwordConfirmation" to "password2",
            "isAdmin" to "true"),
            result.request.session as MockHttpSession
        )

        assertThat(result.response.status).isEqualTo(HttpStatus.FOUND.value())

        val found = us.findById(otherUser.id!!)!!
        assertThat(found.passwordDigest).isNotEqualTo(before)
        assertThat(found.isAdmin).isFalse()
    }

    @Test
    fun `should redirect destroy when not logged in`() {
        val before = us.findAll().size

        val result = TH.post(mvc, "/users/${user.id}/delete", mapOf())

        assertThat(result.response.redirectedUrl.toURL()).hasPath("/login")

        assertThat(us.findAll().size).isEqualTo(before)
    }

    @Test
    fun `should redirect destroy when logged in as a non-admin`() {
        var result = TH.loginAs(mvc, otherUser, false)

        val before = us.findAll().size

        result = TH.post(mvc, "/users/${user.id}/delete", mapOf(), result.request.mockSession)
        assertThat(result.response.forwardedUrl).isEqualTo("/error/access-denied")
        result = TH.post(mvc, result.response.forwardedUrl!!, mapOf(), result.request.mockSession)
        assertThat(result.response.redirectedUrl).isEqualTo("/")

        assertThat(us.findAll().size).isEqualTo(before)
    }

    @Test
    fun `アクティベートされていないユーザーは一覧に表示されない`() {
        val notActivated = us.findAll().first { !it.isActivated }
        var result = TH.loginAs(mvc, user, false)
        result = TH.get(mvc, "/users", result.mockSession)
        val ulUsers = TH.parseHtml(result, client).getByXPath<HtmlElement>("//ul[@class='users']")
        assertThat(ulUsers).isNotEmpty.hasSize(1)
        assertThat(ulUsers[0].getByXPath<HtmlElement>(".//a")).allSatisfy {
            assertThat(it.textContent).isNotEqualTo(notActivated.name)
        }
    }

    @Test
    fun `アクティベートされていないユーザー情報は表示されない - ルートにリダイレクトされる`() {
        val notActivated = us.findAll().first { !it.isActivated }
        val result = TH.get(mvc, "/users/${notActivated.id}")
        assertThat(result.response.status).isEqualTo(HttpStatus.FOUND.value())
        assertThat(result.response.redirectedUrl).isEqualTo("/")
    }

    @Test
    fun `should redirect following when not logged in`() {
        val result = TH.get(mvc, "/users/${user.id}/following")
        assertThat(result.response.redirectedUrl).endsWith("/login")
    }

    @Test
    fun `should redirect followers when not logged in`() {
        val result = TH.get(mvc, "/users/${user.id}/followers")
        assertThat(result.response.redirectedUrl).endsWith("/login")
    }
}
