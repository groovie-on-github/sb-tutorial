package com.example.sbtutorial.helper

import com.example.sbtutorial.model.user.User
import com.gargoylesoftware.htmlunit.StringWebResponse
import com.gargoylesoftware.htmlunit.WebClient
import com.gargoylesoftware.htmlunit.html.HtmlElement
import com.gargoylesoftware.htmlunit.html.HtmlPage
import org.assertj.core.api.Assertions.*
import org.springframework.mock.web.MockHttpSession
import org.springframework.security.test.web.servlet.request.SecurityMockMvcRequestPostProcessors
import org.springframework.test.web.servlet.MockMvc
import org.springframework.test.web.servlet.MvcResult
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*
import java.net.URL
import java.util.*
import javax.servlet.http.Cookie

object TestHelper {

    fun parseHtml(html: String, client: WebClient): HtmlPage {

        return client.pageCreator.htmlParser.parseHtml(StringWebResponse(html,
            URL("http://localhost")), client.currentWindow)
    }

    fun checkHeaderMenu(page: HtmlPage, loggedIn: Boolean, id: UUID? = null) {
        assertThat(page.getByXPath<HtmlElement>("//a[@href='/login']"))
            .hasSize(if(loggedIn) 0 else 1)
        assertThat(page.getByXPath<HtmlElement>("//form[@action='/logout' and @method='post']"))
            .hasSize(if(loggedIn) 1 else 0)
        assertThat(page.getByXPath<HtmlElement>("//a[starts-with(@href, '/users/${id ?: ""}')]"))
            .hasSize(if(loggedIn) 1 else 0)
    }
}
