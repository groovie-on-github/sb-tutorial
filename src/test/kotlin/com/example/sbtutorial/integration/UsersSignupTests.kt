package com.example.sbtutorial.integration

import com.example.sbtutorial.BaseTestSetup
import com.example.sbtutorial.controller.AccountActivationsController
import com.example.sbtutorial.controller.StaticPagesController
import com.example.sbtutorial.controller.UsersController
import com.example.sbtutorial.helper.TestHelper.checkHeaderMenu
import com.example.sbtutorial.helper.TestHelper.parseHtml
import com.example.sbtutorial.model.user.AuthenticationType
import com.example.sbtutorial.model.user.UserForm
import com.example.sbtutorial.model.user.UsersService
import com.gargoylesoftware.htmlunit.WebClient
import com.gargoylesoftware.htmlunit.html.HtmlElement
import org.assertj.core.api.Assertions.*
import org.hamcrest.Matchers.*
import org.junit.jupiter.api.Test
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest
import org.springframework.mock.web.MockHttpSession
import org.springframework.security.authentication.DisabledException
import org.springframework.security.test.web.servlet.request.SecurityMockMvcRequestPostProcessors
import org.springframework.test.web.servlet.MockMvc
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*
import org.springframework.test.web.servlet.result.MockMvcResultMatchers.*
import org.springframework.web.util.UriComponentsBuilder
import com.example.sbtutorial.helper.TestHelper as TH

@WebMvcTest(UsersController::class, StaticPagesController::class, AccountActivationsController::class)
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
            .andExpect(redirectedUrl("/"))
            .andExpect(flash().attribute("flash",
                anyOf(
                    hasEntry("info", "view.users.create.mail.sent"),
                    hasEntry("warning", "view.users.create.mail.failed")
                )))
            .andReturn()

        assertThat(us.findAll().size).isEqualTo(before + 1)
        val addedUser = us.findByEmail("user@example.com")!!

        result = mvc.perform(get(result.response.redirectedUrl!!)
            .flashAttrs(result.flashMap)
            .session(result.request.session as MockHttpSession)
        ).andExpect(status().isOk).andReturn()

        val indexPage = parseHtml(result.response.contentAsString, client)
        assertThat(indexPage.body).satisfiesAnyOf(
            fun(body: HtmlElement) {
                assertThat(body.getByXPath<HtmlElement>("./div/div[@class='alert alert-info']")).hasSize(1)
                    .satisfies { assertThat(it[0].textContent).contains("activate", "account") }
            },
            fun(body: HtmlElement) {
                assertThat(body.getByXPath<HtmlElement>("./div/div[@class='alert alert-warning']")).hasSize(1)
                    .satisfies { assertThat(it[0].textContent).contains("e-mail", "not work") }
            }
        )
        checkHeaderMenu(indexPage, false, addedUser.id)
    }

    @Test
    fun `valid signup information with account activation`() {
        TH.get(mvc, "/")
        val before = us.findAll().size

        var result = TH.post(mvc, "/signup", mapOf(
            "name" to "Example User",
            "email" to "user@example.com",
            "password" to "password",
            "passwordConfirmation" to "password"))

        assertThat(us.findAll().size).isEqualTo(before + 1)

        var found = us.findByEmail("user@example.com")
        assertThat(found).isNotNull
        assertThat(found!!.isActivated).isFalse()

        val activationUrl = UserForm(us, found).apply { createActivationToken(); save() }
            .authenticationUrl(AuthenticationType.ACTIVATION, UriComponentsBuilder.newInstance()
                .scheme(result.request.scheme).host(result.request.serverName).port(result.request.serverPort))
        val token = Regex("""account_activation/(\w+)/edit""").find(activationUrl)?.groupValues?.get(1)
        assertThat(token).isNotNull()

        // 有効化していない状態でログインしてみる
        result = TH.loginAs(mvc, found, false)
        assertThat(result.request.getAttribute("SPRING_SECURITY_LAST_EXCEPTION"))
            .isInstanceOf(DisabledException::class.java)

        // 有効化トークンが不正な場合
        val builder = UriComponentsBuilder.newInstance()
            .scheme(result.request.scheme).host(result.request.serverName).port(result.request.serverPort)
            .path("/account_activation/{token}/edit").queryParam("email", "{email}")
        var uri = builder.build().expand("invalid token", found.email).toUriString()

        result = TH.get(mvc, uri)
        assertThat(result.response.redirectedUrl).isEqualTo("/")
        assertThat(result.flashMap.toMap())
            .containsEntry("flash", mapOf("danger" to "view.account-activations.authenticate.fail"))

        // トークンは正しいがメールアドレスが無効な場合
        uri = builder.build().expand(token, "wrong").toUriString()

        result = TH.get(mvc, uri)
        assertThat(result.response.redirectedUrl).isEqualTo("/")
        assertThat(result.flashMap.toMap())
            .containsEntry("flash", mapOf("danger" to "view.account-activations.authenticate.fail"))

        // 有効化トークンが正しい場合
        uri = builder.build().expand(token, found.email).toUriString()

        result = TH.get(mvc, uri)
        assertThat(result.response.redirectedUrl).isEqualTo("/login")
        assertThat(result.flashMap.toMap())
            .containsEntry("flash", mapOf("success" to "view.account-activations.authenticate.success"))
        found = us.findByEmail(found.email)
        assertThat(found).isNotNull.extracting("activated").isEqualTo(true)
    }
}
