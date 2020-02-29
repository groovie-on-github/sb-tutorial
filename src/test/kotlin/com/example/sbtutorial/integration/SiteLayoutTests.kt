package com.example.sbtutorial.integration

import com.example.sbtutorial.BaseTestSetup
import com.example.sbtutorial.controller.StaticPagesController
import com.example.sbtutorial.controller.UsersController
import com.example.sbtutorial.helper.TitleHelper.getFullTitle
import com.example.sbtutorial.mockSession
import com.example.sbtutorial.model.user.UsersService
import com.gargoylesoftware.htmlunit.WebClient
import com.gargoylesoftware.htmlunit.html.HtmlElement
import com.gargoylesoftware.htmlunit.html.HtmlPage
import org.assertj.core.api.Assertions.*
import org.junit.jupiter.api.Test
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest
import org.springframework.mock.web.MockHttpSession
import org.springframework.test.web.servlet.MockMvc
import com.example.sbtutorial.helper.TestHelper as TH

@WebMvcTest(StaticPagesController::class, UsersController::class)
class SiteLayoutTests @Autowired constructor(private val mvc: MockMvc,
    private val client: WebClient, private val us: UsersService): BaseTestSetup(client) {

    @Test
    fun `layout links`() {
        // ログイン前
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

        assertThat(page.getByXPath<HtmlElement>(
            xPath.format("/login"))).hasSize(1)

        assertThat(page.getByXPath<HtmlElement>(
            xPath.format("/users"))).hasSize(0)

        assertThat(page.getByXPath<HtmlElement>(
            "//header[@id='layoutsHeader']//a[starts-with(@href, '/users/') and not(contains(@href, '/edit'))]")).hasSize(0)

        assertThat(page.getByXPath<HtmlElement>(
            "//header[@id='layoutsHeader']//a[starts-with(@href, '/users/') and contains(@href, '/edit')]")).hasSize(0)

        assertThat(page.getByXPath<HtmlElement>(
            "//header[@id='layoutsHeader']//form[@action='/logout' and @method='post']")).hasSize(0)

        page = client.getPage("/contact")
        assertThat(page.titleText).isEqualTo(getFullTitle("Contact"))


        // ログイン後
        val user = us.findByEmail("michael@example.com")!!
        val session = TH.loginAs(mvc, user, false).request.mockSession
        page = TH.parseHtml(TH.get(mvc, "/", mapOf(), session), client)

        assertThat(page.getByXPath<HtmlElement>(
            xPath.format("/"))).hasSize(2)

        assertThat(page.getByXPath<HtmlElement>(
            xPath.format("/help"))).hasSize(1)

        assertThat(page.getByXPath<HtmlElement>(
            xPath.format("/about"))).hasSize(1)

        assertThat(page.getByXPath<HtmlElement>(
            xPath.format("/contact"))).hasSize(1)

        assertThat(page.getByXPath<HtmlElement>(
            xPath.format("/login"))).hasSize(0)

        assertThat(page.getByXPath<HtmlElement>(
            xPath.format("/users"))).hasSize(1)

        assertThat(page.getByXPath<HtmlElement>(
            "//header//a[starts-with(@href, '/users/') and not(contains(@href, '/edit'))]")).hasSize(1)

        assertThat(page.getByXPath<HtmlElement>(
            "//header[@id='layoutsHeader']//a[starts-with(@href, '/users/') and contains(@href, '/edit')]")).hasSize(1)

        assertThat(page.getByXPath<HtmlElement>(
            "//header[@id='layoutsHeader']//form[@action='/logout' and @method='post']")).hasSize(1)
    }

    @Test
    fun `sign up page`() {
        val page = client.getPage<HtmlPage>("/signup")
        assertThat(page.titleText).isEqualTo(getFullTitle("Sign up"))
    }
}
