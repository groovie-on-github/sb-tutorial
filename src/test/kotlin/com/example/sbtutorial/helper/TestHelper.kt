package com.example.sbtutorial.helper

import com.example.sbtutorial.mockSession
import com.example.sbtutorial.model.user.User
import com.gargoylesoftware.htmlunit.StringWebResponse
import com.gargoylesoftware.htmlunit.WebClient
import com.gargoylesoftware.htmlunit.html.HtmlElement
import com.gargoylesoftware.htmlunit.html.HtmlPage
import org.apache.commons.logging.LogFactory
import org.assertj.core.api.Assertions.*
import org.springframework.mock.web.MockHttpSession
import org.springframework.mock.web.MockMultipartFile
import org.springframework.security.test.web.servlet.request.SecurityMockMvcRequestPostProcessors
import org.springframework.test.web.servlet.MockMvc
import org.springframework.test.web.servlet.MvcResult
import org.springframework.test.web.servlet.request.MockMultipartHttpServletRequestBuilder
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*
import org.springframework.test.web.servlet.result.MockMvcResultHandlers.*
import java.io.File
import java.io.FileInputStream
import java.net.URL
import java.util.*
import javax.servlet.http.Cookie

object TestHelper {

    private val log = LogFactory.getLog(TestHelper::class.java)

    fun parseHtml(result: MvcResult, client: WebClient): HtmlPage {
        return parseHtml(result.response.contentAsString, client)
    }

    fun parseHtml(html: String, client: WebClient): HtmlPage {
        return client.pageCreator.htmlParser.parseHtml(StringWebResponse(html,
            URL("http://localhost")), client.currentWindow)
    }

    fun checkHeaderMenu(page: HtmlPage, loggedIn: Boolean, id: UUID? = null) {
        val header = page.body.getByXPath<HtmlElement>("header[@id='layoutsHeader']").first()
        assertThat(header.getByXPath<HtmlElement>(".//a[@href='/login']"))
            .hasSize(if(loggedIn) 0 else 1)
        assertThat(header.getByXPath<HtmlElement>(".//form[@action='/logout' and @method='post']"))
            .hasSize(if(loggedIn) 1 else 0)
        assertThat(header.getByXPath<HtmlElement>(".//a[@href='/users']"))
            .hasSize(if(loggedIn) 1 else 0)
        assertThat(header.getByXPath<HtmlElement>(".//a[@href='/users/${id}']"))
            .hasSize(if(loggedIn) 1 else 0)
        assertThat(header.getByXPath<HtmlElement>(".//a[@href='/users/${id}/edit']"))
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
        ).andDo(log()).andReturn()
    }

    fun get(mvc: MockMvc, path: String, result: MvcResult, params: Map<String, String>? = null,
            vararg cookies: Cookie = emptyArray()): MvcResult {
        return mvc.perform(get(path)
            .session(result.mockSession)
            .apply {
                params?.forEach { (k, v) -> param(k, v) }
                if(cookies.isNotEmpty()) cookie(*cookies)
                try{ flashAttrs(result.flashMap) } catch(e: Exception) {}
                result.request.attributeNames.iterator().forEach { requestAttr(it, result.request.getAttribute(it)) }
            }
        ).andDo(log()).andReturn()
    }

    fun getFollowDispatch(mvc: MockMvc, path: String, result: MvcResult, params: Map<String, String>? = null,
                          vararg cookies: Cookie = emptyArray()): MvcResult {
        var target: String? = path
        lateinit var returnVal: MvcResult
        var isRedirect = false
        result.request.clearAttributes()

        while(target != null) {
            returnVal = get(mvc, target, result, if(isRedirect) null else params, *cookies)
            target = returnVal.response.forwardedUrl
            isRedirect = if(target != null){ false }
                         else {
                            target = returnVal.response.redirectedUrl
                            returnVal.request.clearAttributes()
                            true
                         }
        }

        return returnVal

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
        ).andDo(log()).andReturn()
    }

    fun post(mvc: MockMvc, path: String, result: MvcResult, params: Map<String, String>? = null,
             files:Map<String, File>? = null, vararg cookies: Cookie = emptyArray()): MvcResult {
        return mvc.perform(if(files.isNullOrEmpty()){ post(path) } else { multipart(path) }
            .session(result.mockSession)
            .apply {
                params?.forEach { (k, v) -> param(k, v) }
                files?.forEach { (k, v) ->
                    (this as MockMultipartHttpServletRequestBuilder)
                        .file(MockMultipartFile(k, v.name, "multipart/form-data", FileInputStream(v)))
                }
                if(cookies.isNotEmpty()) cookie(*cookies)
                try{ flashAttrs(result.flashMap) } catch(e: Exception) {}
                result.request.attributeNames.iterator().forEach { requestAttr(it, result.request.getAttribute(it)) }
            }
            .with(SecurityMockMvcRequestPostProcessors.csrf())
        ).andDo(log()).andReturn()
    }

    fun postFollowForward(mvc: MockMvc, path: String, result: MvcResult, params: Map<String, String>? = null,
                          files: Map<String, File>? = null, vararg cookies: Cookie = emptyArray()): MvcResult {
        var target: String? = path
        result.request.clearAttributes()
        var returnVal = result

        while(target != null) {
            returnVal = post(mvc, target, returnVal, params, files, *cookies)
            target = returnVal.response.forwardedUrl.also { log.debug(">> forwardedUrl => $it") }
        }

        return returnVal
    }

    fun loginAs(mvc: MockMvc, user: User, rememberMe: Boolean = false,
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
