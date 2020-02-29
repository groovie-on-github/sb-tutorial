package com.example.sbtutorial.controller

import com.example.sbtutorial.BaseTestSetup
import com.example.sbtutorial.mockSession
import com.example.sbtutorial.model.micropost.Micropost
import com.example.sbtutorial.model.micropost.MicropostsRepository
import com.example.sbtutorial.model.user.User
import com.example.sbtutorial.model.user.UsersService
import com.gargoylesoftware.htmlunit.WebClient
import org.assertj.core.api.SoftAssertions
import org.junit.jupiter.api.BeforeEach
import org.junit.jupiter.api.Test
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest
import org.springframework.data.domain.Example
import org.springframework.data.domain.ExampleMatcher
import org.springframework.data.repository.findByIdOrNull

import org.springframework.test.web.servlet.MockMvc
import org.springframework.test.web.servlet.MvcResult
import java.lang.IllegalArgumentException
import java.util.*
import com.example.sbtutorial.helper.TestHelper as TH

@WebMvcTest(MicropostsController::class, ErrorHandleController::class, StaticPagesController::class,
            SessionsController::class)
class MicropostsControllerIT @Autowired constructor(
    private val mvc: MockMvc, private val client: WebClient,
    private val us: UsersService, private val mr: MicropostsRepository): BaseTestSetup(client) {

    private lateinit var user: User
    private lateinit var micropost: Micropost

    @BeforeEach
    override fun setUp() {
        super.setUp()
        user = us.findByEmail("michael@example.com")!!
        val example = Example.of(Micropost("I just ate an orange!", user))
        micropost = mr.findOne(example).get()
    }


    @Test
    fun `should redirect create when not logged in`(s: SoftAssertions) {
        assertNoDifference("create not logged in", s, { mr.count() }) {
            val result = TH.post(mvc, "/microposts", mapOf("content" to "Lorem ipsum"))
            s.assertThat(result.response.redirectedUrl).endsWith("/login")
        }
    }

    @Test
    fun `should redirect destroy when not logged in`(s: SoftAssertions) {
        lateinit var result: MvcResult
        assertNoDifference("destroy not logged in", s, { mr.count() }) {
            result = TH.post(mvc, "/microposts/${micropost.id}/delete")
        }
        s.assertThat(result.response.redirectedUrl).endsWith("/login")
    }

    @Test
    fun `should redirect destroy for wrong micropost`(s: SoftAssertions) {
        var result = TH.loginAs(mvc, user)
        val micropost = mr.findOne(Example.of(
            Micropost("Oh, is that what you want? Because that's how you get ants!", user),
            ExampleMatcher.matching().withIgnorePaths("user"))).get()
        println(">> $micropost")

        assertNoDifference("destroy wrong micropost", s, { mr.count() }) {
            result = TH.postFollowForward(mvc, "/microposts/${micropost.id}/delete", result)
        }
        s.assertThat(result.response.redirectedUrl).isEqualTo("/")
    }

    @Test
    fun `should redirect destroy for wrong(存在しない) micropost`(s: SoftAssertions) {
        var result = TH.loginAs(mvc, user)
        lateinit var invalidToken: UUID
        do{
            invalidToken = UUID.randomUUID()
            mr.findByIdOrNull(invalidToken) ?: break
        }while(true)

        assertNoDifference("destroy wrong(not exist) micropost", s, { mr.count() }) {
            result = TH.postFollowForward(mvc, "/microposts/${invalidToken}/delete", result)
        }
        s.assertThat(result.response.redirectedUrl).isEqualTo("/")

        assertNoDifference("destroy wrong(invalid token) micropost", s, { mr.count() }) {
            result = TH.postFollowForward(mvc, "/microposts/invalidToken/delete", result)
        }
        s.assertThat(result.response.redirectedUrl).isEqualTo("/")
    }
}
