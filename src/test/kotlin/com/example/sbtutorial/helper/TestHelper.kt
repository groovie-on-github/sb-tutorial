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

    fun parseHtml(result: MvcResult, client: WebClient): HtmlPage {
        return parseHtml(result.response.contentAsString, client)
    }

    fun parseHtml(html: String, client: WebClient): HtmlPage {
        return client.pageCreator.htmlParser.parseHtml(StringWebResponse(html,
            URL("http://localhost")), client.currentWindow)
    }

    fun checkHeaderMenu(page: HtmlPage, loggedIn: Boolean, id: UUID? = null) {
        val header = page.body.getByXPath<HtmlElement>("header[@id='layoutsHeader']").first()
        assertThat(header.getByXPath<HtmlElement>("//a[@href='/login']"))
            .hasSize(if(loggedIn) 0 else 1)
        assertThat(header.getByXPath<HtmlElement>("//form[@action='/logout' and @method='post']"))
            .hasSize(if(loggedIn) 1 else 0)
        assertThat(header.getByXPath<HtmlElement>("//a[@href='/users']"))
            .hasSize(if(loggedIn) 1 else 0)
        assertThat(header.getByXPath<HtmlElement>("//a[@href='/users/${id}']"))
            .hasSize(if(loggedIn) 1 else 0)
        assertThat(header.getByXPath<HtmlElement>("//a[@href='/users/${id}/edit']"))
            .hasSize(if(loggedIn) 1 else 0)
    }

    fun get(mvc: MockMvc, path: String, session: MockHttpSession? = null,
            params: Map<String, String>? = null, vararg cookies: Cookie = emptyArray()): MvcResult {

        return get(mvc, path, params, session, *cookies)
    }

    fun get(mvc: MockMvc, path: String, params: Map<String, String>?,
                session: MockHttpSession? = null, vararg cookies: Cookie = emptyArray()): MvcResult {
        return mvc.perform(get(path)
            .apply {
                params?.forEach { (k, v) ->
                    param(k, v)
                }
            }
            .apply { if(session != null) session(session) }
            .apply { if(cookies.isNotEmpty()) cookie(*cookies) }
        ).andReturn()
    }

    fun post(mvc: MockMvc, path: String, session: MockHttpSession? = null,
             params: Map<String, String>? = null, vararg cookies: Cookie = emptyArray()): MvcResult {
        return post(mvc, path, params, session, *cookies)
    }

    fun post(mvc: MockMvc, path: String, params: Map<String, String>?,
            session: MockHttpSession? = null, vararg cookies: Cookie = emptyArray()): MvcResult {
        return mvc.perform(post(path)
            .apply {
                params?.forEach { (k, v) ->
                    param(k, v)
                }
            }
            .apply { if(session != null) session(session) }
            .apply { if(cookies.isNotEmpty()) cookie(*cookies) }
            .with(SecurityMockMvcRequestPostProcessors.csrf())
        ).andReturn()
    }

    fun loginAs(mvc: MockMvc, user: User, rememberMe: Boolean,
                session: MockHttpSession? = null, vararg cookies: Cookie = emptyArray()): MvcResult {

        return post(mvc, "/login",
            mapOf("email" to user.email, "password" to "password", "remember-me" to if(rememberMe) "1" else "0"),
            session, *cookies)
    }

    fun logout(mvc: MockMvc, session: MockHttpSession): MvcResult {
        val result = post(mvc, "/logout", emptyMap(), session)
        return get(mvc, result.response.redirectedUrl!!, emptyMap(), result.request.session as MockHttpSession)
    }
}
