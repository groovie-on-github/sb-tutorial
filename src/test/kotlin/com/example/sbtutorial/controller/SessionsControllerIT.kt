package com.example.sbtutorial.controller

import com.example.sbtutorial.BaseTestSetup
import com.gargoylesoftware.htmlunit.WebClient
import com.gargoylesoftware.htmlunit.html.HtmlElement
import com.gargoylesoftware.htmlunit.html.HtmlPage
import org.assertj.core.api.Assertions.*
import org.junit.jupiter.api.Test
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest
import org.springframework.http.HttpStatus

@WebMvcTest(SessionsController::class)
class SessionsControllerIT(@Autowired private val client: WebClient): BaseTestSetup(client) {

    @Test
    fun `should get new`() {
        val page = client.getPage<HtmlPage>("/login")
        assertThat(page.webResponse.statusCode).isEqualTo(HttpStatus.OK.value())
        assertThat(page.forms).hasSize(1).satisfies {
            assertThat(it[0].actionAttribute).isEqualTo("/login")
            assertThat(it[0].methodAttribute).isEqualTo("post")
        }
        assertThat(page.getByXPath<HtmlElement>("//label[@for='email']")).hasSize(1)
            .satisfies {
                assertThat(it[0]).hasFieldOrPropertyWithValue("textContent", "Email")
            }
        assertThat(page.getByXPath<HtmlElement>("//label[@for='password']")).hasSize(1)
            .satisfies {
                assertThat(it[0]).hasFieldOrPropertyWithValue("textContent", "Password")
            }
        assertThat(page.getByXPath<HtmlElement>("//a[@href='/signup']"))
            .hasSize(1).satisfies {
                assertThat(it[0]).hasFieldOrPropertyWithValue("textContent", "Sign up now!")
            }
    }
}
