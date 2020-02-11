package com.example.sbtutorial.controller

import com.example.sbtutorial.BaseTestUseDataJpa
import com.example.sbtutorial.model.user.UsersService
import com.gargoylesoftware.htmlunit.WebClient
import com.gargoylesoftware.htmlunit.html.HtmlPage
import org.assertj.core.api.Assertions.*
import org.junit.jupiter.api.Test
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest
import org.springframework.context.annotation.ComponentScan
import org.springframework.context.annotation.FilterType
import org.springframework.http.HttpStatus

@WebMvcTest(UsersController::class,
    includeFilters = [ComponentScan.Filter(UsersService::class, type = FilterType.ASSIGNABLE_TYPE)])
class UsersControllerIT(@Autowired private val client: WebClient): BaseTestUseDataJpa(client) {

    @Test
    fun `should get new`() {
        val page = client.getPage<HtmlPage>("/signup")
        assertThat(page.webResponse.statusCode).isEqualTo(HttpStatus.OK.value())
    }
}
