package com.example.sbtutorial.integration

import com.example.sbtutorial.BaseTestSetup
import com.example.sbtutorial.controller.MicropostsController
import com.example.sbtutorial.controller.StaticPagesController
import com.example.sbtutorial.controller.UsersController
import com.example.sbtutorial.mockSession
import com.example.sbtutorial.model.micropost.Micropost
import com.example.sbtutorial.model.micropost.MicropostsRepository
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
import java.io.File
import com.example.sbtutorial.helper.TestHelper as TH

@WebMvcTest(MicropostsController::class, StaticPagesController::class, UsersController::class)
class MicropostsInterfaceTests @Autowired constructor(
    private val mvc: MockMvc, private val client: WebClient,
    private val us: UsersService, private val mr: MicropostsRepository): BaseTestSetup(client) {

    private lateinit var user: User

    @BeforeEach
    override fun setUp() {
        super.setUp()
        user = us.findByEmail("michael@example.com")!!
    }

    @Test
    fun `micropost interface`(s: SoftAssertions) {
        var result = TH.loginAs(mvc, user)

        result = TH.get(mvc, "/", result.mockSession)
        var indexPage = TH.parseHtml(result, client)
        s.assertThat(indexPage.querySelectorAll("ul.pagination"))
            .describedAs("test pagination count").hasSize(1)
        s.assertThat(indexPage.querySelectorAll("input[type='file']"))
            .describedAs("test file input count").hasSize(1)

        // 無効な送信
        assertNoDifference("create invalid micropost", s, { mr.count() }) {
            result = TH.post(mvc, "/microposts", mapOf("content" to ""), result.mockSession)
        }
        s.assertThat(TH.parseHtml(result, client).querySelectorAll("div#error_explanation"))
            .describedAs("test error_explanation exists").isNotEmpty

        // 有効な送信
        val content = "This micropost really ties the room together"
        assertDifference(1, "create valid post", s, { mr.count() }) {
            result.request.clearAttributes()
            result = TH.post(mvc, "/microposts", result, mapOf("content" to content),
                mapOf("picture" to File("./src/main/resources/static/images/spring.png")))
        }
        s.assertThat(result.response.redirectedUrl).describedAs("test redirected url to").isEqualTo("/")
        result = TH.get(mvc, result.response.redirectedUrl!!, result.mockSession)
        indexPage = TH.parseHtml(result, client)
        s.assertThat(indexPage.asText()).describedAs("test contains content").contains(content)
        s.assertThat(indexPage.querySelectorAll("span.content > img")).describedAs("test contains img in content")
            .hasSizeGreaterThanOrEqualTo(1)

        // 投稿を削除する
        s.assertThat(indexPage.getByXPath<HtmlElement>(".//button[text() = 'delete']"))
            .describedAs("test delete link exist").isNotEmpty
        val firstMicropost = mr.findAllByUserOrderByCreatedAtDesc(user, PageRequest.of(0, 30)).first()
        assertDifference(-1, "delete micropost", s, { mr.count() }) {
            result = TH.post(mvc, "/microposts/${firstMicropost.id}/delete", result.mockSession)
        }

        // 違うユーザーのプロフィールにアクセス (削除リンクがないことを確認)
        val anotherUser = us.findByEmail("duchess@example.gov")!!
        result = TH.get(mvc, "/users/${anotherUser.id}", result.mockSession)
        val showPage = TH.parseHtml(result, client)
        s.assertThat(showPage.body.asText())
            .describedAs("this is anotherUser's page").contains(anotherUser.name)
        s.assertThat(showPage.getByXPath<HtmlElement>(".//button[text() = 'delete']"))
            .describedAs("test delete link not exist").isEmpty()
    }

    @Test
    fun `micropost sidebar count`(s: SoftAssertions) {
        var result = TH.loginAs(mvc, user)
        result = TH.get(mvc, "/", result.mockSession)
        s.assertThat(TH.parseHtml(result, client).body.asText()).describedAs("contains count & micropost's'")
            .containsPattern("""\d+ microposts""")

        // まだマイクロポストを投稿していないユーザー
        val nonPostUser = us.findByEmail("boss@example.gov")!!
        result = TH.loginAs(mvc, nonPostUser)
        result = TH.get(mvc, "/", result.mockSession)
        s.assertThat(TH.parseHtml(result, client).body.asText()).describedAs("contains 0 & micropost's'")
            .contains("0 microposts")
        nonPostUser.micropostList.add(Micropost("A micropost", nonPostUser))
        us.save(nonPostUser)
        result = TH.get(mvc, "/", result.mockSession)
        s.assertThat(TH.parseHtml(result, client).body.asText()).describedAs("contains 1 & micropost")
            .contains("1 micropost")
    }
}
