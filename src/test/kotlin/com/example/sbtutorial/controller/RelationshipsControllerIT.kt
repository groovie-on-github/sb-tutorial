package com.example.sbtutorial.controller

import com.example.sbtutorial.BaseTestSetup
import com.example.sbtutorial.model.user.User
import com.example.sbtutorial.model.user.UsersService
import com.gargoylesoftware.htmlunit.WebClient
import org.assertj.core.api.Assertions.*
import org.junit.jupiter.api.BeforeEach
import org.junit.jupiter.api.Test
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest
import org.springframework.test.web.servlet.MockMvc
import com.example.sbtutorial.helper.TestHelper as TH

@WebMvcTest(RelationshipsController::class)
class RelationshipsControllerIT @Autowired constructor(
    private val mvc: MockMvc, private val client: WebClient, private val us: UsersService): BaseTestSetup(client) {

    private lateinit var user: User
    private lateinit var noRelationUser: User

    @BeforeEach
    override fun setUp() {
        super.setUp()
        user = us.findByEmail("michael@example.com")!!
        noRelationUser = us.findByEmail("duchess@example.gov")!!
    }

    @Test
    fun `create should require logged-in user`() {
        assertNoDifference("no difference relationships on create by non-logged-in user", null,
                           { us.findAll().fold(0L) { acc, u -> acc + us.getFollowersCount(u) } }) {
            val result = TH.post(mvc, "/relationships", mapOf("followedId" to noRelationUser.id.toString()))
            assertThat(result.response.redirectedUrl).endsWith("/login")
        }
    }

    @Test
    fun `destroy should require logged-in user`() {
        assertNoDifference("no difference relationships on destroy by non-logged-in user", null,
                           { us.findAll().fold(0L) { acc, u -> acc + us.getFollowersCount(u) } }) {
            val relationUser = user.following.first()
            assertThat(relationUser).isNotNull
            val result = TH.post(mvc, "/relationships/${relationUser.id}/delete")
            assertThat(result.response.redirectedUrl).endsWith("/login")
        }
    }
}