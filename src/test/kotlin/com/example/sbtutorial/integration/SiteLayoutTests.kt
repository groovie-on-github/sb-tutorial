package com.example.sbtutorial.integration

import com.example.sbtutorial.BaseTestSetup
import com.example.sbtutorial.controller.StaticPagesController
import com.example.sbtutorial.controller.UsersController
import com.example.sbtutorial.helper.TitleHelper.getFullTitle
import com.gargoylesoftware.htmlunit.WebClient
import com.gargoylesoftware.htmlunit.html.HtmlElement
import com.gargoylesoftware.htmlunit.html.HtmlPage
import org.assertj.core.api.Assertions.*
import org.junit.jupiter.api.Test
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest

@WebMvcTest(StaticPagesController::class, UsersController::class)
class SiteLayoutTests(@Autowired private val client: WebClient): BaseTestSetup(client) {

    @Test
    fun `layout links`() {
        var page = client.getPage<HtmlPage>("/")
        val xPath = "//a[@href='%s']"

        assertThat(page.getByXPath<HtmlElement>(
            xPath.format("/"))).hasSize(2)

        assertThat(page.getByXPath<HtmlElement>(
            xPath.format("/help"))).hasSize(1)

        assertThat(page.getByXPath<HtmlElement>(
            xPath.format("/about"))).hasSize(1)

        assertThat(page.getByXPath<HtmlElement>(
            xPath.format("/contact"))).hasSize(1)

        page = client.getPage("/contact")
        assertThat(page.titleText).isEqualTo(getFullTitle("Contact"))
    }

    @Test
    fun `sign up page`() {
        val page = client.getPage<HtmlPage>("/signup")
        assertThat(page.titleText).isEqualTo(getFullTitle("Sign up"))
    }
}
