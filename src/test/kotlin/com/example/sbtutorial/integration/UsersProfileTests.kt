package com.example.sbtutorial.integration

import com.example.sbtutorial.BaseTestSetup
import com.example.sbtutorial.controller.UsersController
import com.example.sbtutorial.helper.TitleHelper
import com.example.sbtutorial.model.micropost.MicropostsService
import com.example.sbtutorial.helper.TestHelper as TH
import com.example.sbtutorial.model.user.User
import com.example.sbtutorial.model.user.UsersService
import com.gargoylesoftware.htmlunit.WebClient
import com.gargoylesoftware.htmlunit.html.HtmlElement
import org.assertj.core.api.SoftAssertions
import org.junit.jupiter.api.BeforeEach
import org.junit.jupiter.api.Test
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest
import org.springframework.data.domain.PageRequest
import org.springframework.test.web.servlet.MockMvc

@WebMvcTest(UsersController::class)
class UsersProfileTests @Autowired constructor(
    private val us: UsersService, private val ms: MicropostsService,
    private val mvc: MockMvc, private val client: WebClient): BaseTestSetup(client) {

    private lateinit var user: User

    @BeforeEach
    override fun setUp() {
        super.setUp()
        user = us.findByEmail("michael@example.com")!!
    }

    @Test
    fun `profile display`(s: SoftAssertions) {
        val result = TH.get(mvc, "/users/${user.id}")
        s.assertThat(result.modelAndView?.viewName).describedAs("viewname").isEqualTo("users/show")
        val showPage = TH.parseHtml(result, client)
        s.assertThat(showPage.titleText).describedAs("title").isEqualTo(TitleHelper.getFullTitle(user.name))
        s.assertThat(showPage.body.getByXPath<HtmlElement>(".//h1")).describedAs("h1").hasSizeGreaterThanOrEqualTo(1)
            .anySatisfy {
                s.assertThat(it.textContent).describedAs("h1 text").contains(user.name)
                s.assertThat(it.getByXPath<HtmlElement>(".//img[@class='gravatar']"))
                    .describedAs("h1 gravatar").hasSize(1)
            }
        val body = showPage.body.asText()
        s.assertThat(body).describedAs("micropost count").contains("(${user.micropostList.size})")

        s.assertThat(showPage.querySelector<HtmlElement>("ul.pagination")).describedAs("pagination exists").isNotNull

        s.assertThat(ms.findAll(user, PageRequest.of(0, 30))).describedAs("microposts").allSatisfy {
            s.assertThat(body).describedAs("micropost content").contains(it.content)
        }
    }

    @Test
    fun `practice 13-2-3 (1)`(s: SoftAssertions) {
        val result = TH.get(mvc, "/users/${user.id}")
        val showPage = TH.parseHtml(result, client)
        s.assertThat(showPage.body.getByXPath<HtmlElement>(".//aside//h1"))
            .describedAs("user profile h1").hasSize(1).anySatisfy {
                s.assertThat(it.textContent).describedAs("user profile h1 text").contains(user.name)
                s.assertThat(it.getByXPath<HtmlElement>(".//img[@class='gravatar']"))
                    .describedAs("user profile h1 gravatar").hasSize(1)
            }
    }

    @Test
    fun `practice 13-2-3 (2)`(s: SoftAssertions) {
        val result = TH.get(mvc, "/users/${user.id}")
        val showPage = TH.parseHtml(result, client)
        s.assertThat(showPage.body.querySelectorAll("ul.pagination"))
            .describedAs("only one pagination").hasSize(1)
    }
}
