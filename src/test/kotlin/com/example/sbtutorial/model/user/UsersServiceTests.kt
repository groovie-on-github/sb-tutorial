package com.example.sbtutorial.model.user

import com.example.sbtutorial.BaseTestSetup
import org.assertj.core.api.Assertions.*
import org.assertj.core.api.SoftAssertions
import org.junit.jupiter.api.BeforeEach
import org.junit.jupiter.api.Test
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.boot.test.context.SpringBootTest
import javax.persistence.EntityManager

@SpringBootTest
class UsersServiceTests @Autowired constructor(private val us: UsersService,
                                               private val em: EntityManager): BaseTestSetup(null) {

    private lateinit var michael: User
    private lateinit var archer: User

    @BeforeEach
    override fun setUp() {
        super.setUp()
        michael = us.findByEmail("michael@example.com")!!
        archer = us.findByEmail("duchess@example.gov")!!
    }

    @Test
    fun `default user`() {
        val defaultUser = us.findByEmail("michael@example.com")
        assertThat(defaultUser).isNotNull
        assertThat(defaultUser!!.id).isNotNull()
        assertThat(defaultUser.createdAt).isNotNull()
        assertThat(defaultUser.updatedAt).isNotNull()
    }

    @Test
    fun `should follow and unfollow a user`(s: SoftAssertions) {
        s.assertThat(us.isFollowing(michael.id!!, archer.id!!)).isFalse
        s.assertThat(archer.followers.contains(michael)).isFalse
        us.follow(michael, archer)
        s.assertThat(us.isFollowing(michael.id!!, archer.id!!)).isTrue
        em.refresh(archer)
        s.assertThat(archer.followers.contains(michael)).isTrue
        us.unfollow(michael, archer)
        s.assertThat(us.isFollowing(michael.id!!, archer.id!!)).isFalse
        em.refresh(archer)
        s.assertThat(archer.followers.contains(michael)).isFalse
    }
}
