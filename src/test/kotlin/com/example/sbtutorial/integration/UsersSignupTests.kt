package com.example.sbtutorial.integration

import com.example.sbtutorial.BaseTestSetup
import com.example.sbtutorial.controller.UsersController
import com.example.sbtutorial.helper.TestHelper.checkHeaderMenu
import com.example.sbtutorial.helper.TestHelper.parseHtml
import com.example.sbtutorial.model.user.UsersService
import com.gargoylesoftware.htmlunit.WebClient
import com.gargoylesoftware.htmlunit.html.HtmlElement
import org.assertj.core.api.Assertions.*
import org.hamcrest.Matchers.*
import org.junit.jupiter.api.Test
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest
import org.springframework.mock.web.MockHttpSession
import org.springframework.security.test.web.servlet.request.SecurityMockMvcRequestPostProcessors
import org.springframework.test.web.servlet.MockMvc
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*
import org.springframework.test.web.servlet.result.MockMvcResultMatchers.*

@WebMvcTest(UsersController::class)
class UsersSignupTests @Autowired constructor(
    private val mvc: MockMvc,
    private val client: WebClient,
    private val us: UsersService): BaseTestSetup(client) {

    @Test
    fun `invalid signup information`() {
        val before = us.findAll().size

        var result = mvc.perform(get("/signup"))
            .andExpect(status().isOk).andReturn()

        var newPage = parseHtml(result.response.contentAsString, client)
        assertThat(newPage.getByXPath<HtmlElement>("//form[@action='/signup' and @method='post']"))
            .hasSize(1)

        result = mvc.perform(post("/signup")
            .param("name", "")
            .param("email", "user@invalid")
            .param("password", "foo")
            .param("passwordConfirmation", "bar")
            .with(SecurityMockMvcRequestPostProcessors.csrf())
        ).andExpect(status().isOk).andReturn()

        assertThat(us.findAll().size).isEqualTo(before)

        newPage = parseHtml(result.response.contentAsString, client)
        assertThat(newPage.getByXPath<HtmlElement>("id('error_explanation')"))
            .hasSize(1)
        assertThat(newPage.getByXPath<HtmlElement>("//*[contains(@class, 'field_with_error')]"))
            .hasSize(4)
        checkHeaderMenu(newPage, false)
    }

    @Test
    fun `valid signup information`() {
        val before = us.findAll().size

        var result = mvc.perform(get("/signup"))
            .andExpect(status().isOk).andReturn()

        val newPage = parseHtml(result.response.contentAsString, client)
        assertThat(newPage.getByXPath<HtmlElement>("//form[@action='/signup' and @method='post']"))
            .hasSize(1)
        checkHeaderMenu(newPage, false)

        result = mvc.perform(post("/signup")
            .param("name", "Example User")
            .param("email", "user@example.com")
            .param("password", "password")
            .param("passwordConfirmation", "password")
            .with(SecurityMockMvcRequestPostProcessors.csrf())
        )
            .andExpect(status().is3xxRedirection)
            .andExpect(redirectedUrlPattern("/users/*"))
            .andExpect(flash().attribute("flash",
                hasEntry("success", "view.users.show.welcome")))
            .andReturn()

        assertThat(us.findAll().size).isEqualTo(before + 1)
        val addedUser = us.findByEmail("user@example.com")!!

        result = mvc.perform(get(result.response.redirectedUrl!!)
            .flashAttrs(result.flashMap)
            .session(result.request.session as MockHttpSession)
        ).andExpect(status().isOk).andReturn()

        val showPage = parseHtml(result.response.contentAsString, client)
        assertThat(showPage.titleText).contains("Example User")
        assertThat(showPage.getByXPath<HtmlElement>(
            "/html/body/div/div[@class='alert alert-success']"))
            .hasSize(1).satisfies {
                assertThat(it[0].textContent).containsIgnoringCase("welcome")
            }
        checkHeaderMenu(showPage, true, addedUser.id)
    }
}
