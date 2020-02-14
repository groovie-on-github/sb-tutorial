package com.example.sbtutorial.controller

import com.example.sbtutorial.BaseTestSetup
import com.gargoylesoftware.htmlunit.WebClient
import com.gargoylesoftware.htmlunit.html.HtmlPage
import org.assertj.core.api.Assertions.*
import org.junit.jupiter.api.Test
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest
import org.springframework.http.HttpStatus

@WebMvcTest(UsersController::class)
class UsersControllerIT(@Autowired private val client: WebClient): BaseTestSetup(client) {

    @Test
    fun `should get new`() {
        val page = client.getPage<HtmlPage>("/signup")
        assertThat(page.webResponse.statusCode).isEqualTo(HttpStatus.OK.value())
    }
}
