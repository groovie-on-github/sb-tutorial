package com.example.sbtutorial.controller

import com.example.sbtutorial.helper.TitleHelper
import com.gargoylesoftware.htmlunit.WebClient
import com.gargoylesoftware.htmlunit.html.HtmlPage
import org.assertj.core.api.Assertions.*
import org.junit.jupiter.api.BeforeEach
import org.junit.jupiter.api.Test
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest
import org.springframework.context.annotation.ComponentScan
import org.springframework.context.annotation.FilterType
import org.springframework.http.HttpStatus

@WebMvcTest(StaticPagesController::class,
    includeFilters = [ComponentScan.Filter(TitleHelper::class, type = FilterType.ASSIGNABLE_TYPE)])
class StaticPagesControllerIT(@Autowired private val client: WebClient) {

    private val baseTitle = TitleHelper.BASE_TITLE

    @BeforeEach
    fun setUp() {
        client.addRequestHeader("Accept-Language", "en")
    }

    @Test
    fun `should get root`() {
        val page = client.getPage<HtmlPage>("/")
        assertThat(page.webResponse.statusCode).isEqualTo(HttpStatus.OK.value())
        assertThat(page.titleText).isEqualTo(baseTitle)
        val h1s = page.getElementsByTagName("h1")
        assertThat(h1s).hasSize(1)
        assertThat(h1s[0].textContent).isEqualTo("Sample App")
    }

    @Test
    fun `should get home`() {
        val page = client.getPage<HtmlPage>("/")
        assertThat(page.webResponse.statusCode).isEqualTo(HttpStatus.OK.value())
        assertThat(page.titleText).isEqualTo(baseTitle)
        val h1s = page.getElementsByTagName("h1")
        assertThat(h1s).hasSize(1)
        assertThat(h1s[0].textContent).isEqualTo("Sample App")
    }

    @Test
    fun `should get help`() {
        val page = client.getPage<HtmlPage>("/help")
        assertThat(page.webResponse.statusCode).isEqualTo(HttpStatus.OK.value())
        assertThat(page.titleText).isEqualTo("Help | $baseTitle")
        val h1s = page.getElementsByTagName("h1")
        assertThat(h1s).hasSize(1)
        assertThat(h1s[0].textContent).isEqualTo("Help")
    }

    @Test
    fun `should get about`() {
        val page = client.getPage<HtmlPage>("/about")
        assertThat(page.webResponse.statusCode).isEqualTo(HttpStatus.OK.value())
        assertThat(page.titleText).isEqualTo("About | $baseTitle")
        val h1s = page.getElementsByTagName("h1")
        assertThat(h1s).hasSize(1)
        assertThat(h1s[0].textContent).isEqualTo("About")
    }

    @Test
    fun `should get contact`() {
        val page = client.getPage<HtmlPage>("/contact")
        assertThat(page.webResponse.statusCode).isEqualTo(HttpStatus.OK.value())
        assertThat(page.titleText).isEqualTo("Contact | $baseTitle")
        val h1s = page.getElementsByTagName("h1")
        assertThat(h1s).hasSize(1)
        assertThat(h1s[0].textContent).isEqualTo("Contact")
    }
}
