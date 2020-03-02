package com.example.sbtutorial.integration

import com.example.sbtutorial.BaseTestSetup
import com.example.sbtutorial.controller.UsersController
import com.example.sbtutorial.model.user.User
import com.example.sbtutorial.model.user.UsersService
import com.gargoylesoftware.htmlunit.WebClient
import org.assertj.core.api.SoftAssertions
import org.junit.jupiter.api.BeforeEach
import org.junit.jupiter.api.Test
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest
import org.springframework.data.domain.PageRequest
import org.springframework.test.web.servlet.MockMvc
import com.example.sbtutorial.helper.TestHelper as TH

@WebMvcTest(UsersController::class)
class FollowingTests @Autowired constructor(
    private val mvc: MockMvc, private val client: WebClient,
    private val us: UsersService): BaseTestSetup(client) {

    private lateinit var user: User

    @BeforeEach
    override fun setUp() {
        super.setUp()
        user = us.findByEmail("michael@example.com")!!
    }

    @Test
    fun `following page`(s: SoftAssertions) {
        var result = TH.loginAs(mvc, user)
        result = TH.get(mvc, "/users/${user.id}/following", result)
        val following = us.findFollowing(user, PageRequest.of(0, 30))
        s.assertThat(following).describedAs("following is not empty").isNotEmpty
        val followingPage = TH.parseHtml(result, client)
        s.assertThat(followingPage.body.asText()).describedAs("html contains following count")
            .contains(following.totalElements.toString() + "\n")
        s.assertThat(following).allSatisfy {
            s.assertThat(followingPage.querySelectorAll("a[href='/users/${it.id}']"))
                .describedAs("link to following exists one").hasSize(2)
        }
    }

    @Test
    fun `followers page`(s: SoftAssertions) {
        var result = TH.loginAs(mvc, user)
        result = TH.get(mvc, "/users/${user.id}/followers", result)
        val followers = us.findFollowers(user, PageRequest.of(0, 30))
        s.assertThat(followers).describedAs("followers is not empty").isNotEmpty
        val followersPage = TH.parseHtml(result, client)
        s.assertThat(followersPage.body.asText()).describedAs("html contains followers count")
            .contains(followers.totalElements.toString() + "\n")
        s.assertThat(followers).allSatisfy {
            s.assertThat(followersPage.querySelectorAll("a[href='/users/${it.id}']"))
                .describedAs("link to follower exists one").hasSize(2)
        }
    }
}
