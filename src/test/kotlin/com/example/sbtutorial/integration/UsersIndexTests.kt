package com.example.sbtutorial.integration

import com.example.sbtutorial.BaseTestSetup
import com.example.sbtutorial.controller.ErrorHandleController
import com.example.sbtutorial.controller.SessionsController
import com.example.sbtutorial.controller.UsersController
import com.example.sbtutorial.mockSession
import com.example.sbtutorial.helper.TestHelper as TH
import com.example.sbtutorial.model.user.User
import com.example.sbtutorial.model.user.UsersService
import com.gargoylesoftware.htmlunit.WebClient
import com.gargoylesoftware.htmlunit.html.HtmlElement
import org.assertj.core.api.Assertions.*
import org.junit.jupiter.api.BeforeEach
import org.junit.jupiter.api.Test
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest
import org.springframework.data.domain.PageRequest
import org.springframework.test.web.servlet.MockMvc
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*
import org.springframework.test.web.servlet.result.MockMvcResultMatchers.*

@WebMvcTest(UsersController::class, ErrorHandleController::class, SessionsController::class)
class UsersIndexTests @Autowired constructor(private val us: UsersService,
                                             private val mvc: MockMvc, private val client: WebClient): BaseTestSetup(client) {

    private lateinit var admin: User
    private lateinit var nonAdmin: User

    @BeforeEach
    override fun setUp() {
        super.setUp()
        admin = us.findByEmail("michael@example.com")!!
        nonAdmin = us.findByEmail("duchess@example.gov")!!
    }

    @Test
    fun `index including pagination`() {
        var result = TH.loginAs(mvc, nonAdmin, false)

        result = mvc.perform(get("/users")
            .session(result.request.mockSession)
        )
            .andExpect(view().name("users/index"))
            .andReturn()

        val usersPage = TH.parseHtml(result, client)
        assertThat(usersPage.getByXPath<HtmlElement>("//nav[@class='pagination-fragment']"))
            .isNotEmpty.hasSize(2)

        us.findAllActivated(PageRequest.of(0, 30)).content.forEach {
            val userLink = usersPage.getByXPath<HtmlElement>("//ul[@class='users']//a[@href='/users/${it.id}']")
            assertThat(userLink).isNotEmpty.hasSize(1)
            assertThat(userLink[0].textContent).isEqualTo(it.name)
        }
    }

    @Test
    fun `index as admin including pagination and delete links`() {
        var result = TH.loginAs(mvc, admin, false)
        result = mvc.perform(get("/users").session(result.mockSession))
            .andExpect(view().name("users/index")).andReturn()

        val usersPage = TH.parseHtml(result, client)
        assertThat(usersPage.getByXPath<HtmlElement>("//nav[@class='pagination-fragment']"))
            .hasSize(2)

        val ul = usersPage.getByXPath<HtmlElement>("//ul[@class='users']").first()
        us.findAllActivated(PageRequest.of(0, 30)).forEach {
            assertThat(ul.getByXPath<HtmlElement>("//a[@href='/users/${it.id}']"))
            if(it != admin) {
                assertThat(ul.getByXPath<HtmlElement>(".//button[@formaction='/users/${it.id}/delete']"))
                    .hasSize(1)
            }
        }

        val before = us.findAll().size
        TH.post(mvc, "/users/${nonAdmin.id}/delete", result.mockSession)
        assertThat(us.findAll().size).isEqualTo(before - 1)
    }

    @Test
    fun `index as non-admin`() {
        var result = TH.loginAs(mvc, nonAdmin, false)
        result = TH.get(mvc, "/users", result.mockSession)
        val usersPage = TH.parseHtml(result, client)
        val ul = usersPage.getByXPath<HtmlElement>("//ul[@class='users']").first()
        assertThat(ul.getByXPath<HtmlElement>(".//button")).hasSize(0)
    }
}
