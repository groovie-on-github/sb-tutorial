package com.example.sbtutorial.model.user

import org.assertj.core.api.Assertions.*
import org.junit.jupiter.api.BeforeEach
import org.junit.jupiter.api.Test
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest
import org.springframework.boot.test.autoconfigure.orm.jpa.TestEntityManager
import org.springframework.data.repository.findByIdOrNull
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder
import java.util.*

@DataJpaTest
class UsersRepositoryTests @Autowired constructor(private val em: TestEntityManager,
    private val ur: UsersRepository) {

    private val pe: BCryptPasswordEncoder = BCryptPasswordEncoder()

    private lateinit var user: User

    @BeforeEach
    fun setUp() {
        println(">> #setUp")
        user = User("Example User", "user@example.com".toUpperCase()).apply { passwordDigest = pe.encode("foobar") }
        ur.saveAndFlush(user)
        println("<<")
    }

    @Test
    fun `#findByEmail`() {
        val email = "user@example.com"
        var found = ur.findByEmail(email)
        assertThat(found.also(::println)).isEqualTo(user)

        found = ur.findByEmail(email.toUpperCase())
        assertThat(found).isNull()

        found = ur.findByEmail("unknown@example.com")
        assertThat(found).isNull()
    }

    @Test
    fun `#countFollowingById and #countFollowersById`() {
        println(">> create followed and relationship with user")
        for(i in 1..10) {
            val followed = User("followed$i", "followed$i@example.com").apply { passwordDigest = pe.encode("password") }
            ur.saveAndFlush(followed)
            ur.insertUserRelationShips(user.id!!, followed.id!!)
        }
        println("<<")

        println(">> create follower and relationship to user")
        for(i in 1..5) {
            val follower = User("follower$i", "follower$i@example.com").apply { passwordDigest = pe.encode("password") }
            ur.saveAndFlush(follower)
            ur.insertUserRelationShips(follower.id!!, user.id!!)
        }
        println("<<")

        println(">> #countFollowingById")
        assertThat(ur.countFollowingById(user.id!!)).isEqualTo(10)
        println("<<")
        println(">> #countFollowersById")
        assertThat(ur.countFollowersById(user.id!!)).isEqualTo(5)
        println("<<")
    }

    @Test
    fun `#countByFollowerIdAndFollowedId`() {
        val followed = User("followed", "followed@example.com").apply { passwordDigest = pe.encode("password") }
        ur.saveAndFlush(followed)
        user.following.add(followed)
        ur.saveAndFlush(user)

        var count = ur.countByIdAndFollowingId(user.id!!, followed.id!!)
        assertThat(count).isEqualTo(1)

        followed.following.add(user)
        ur.saveAndFlush(followed)
        count = ur.countByIdAndFollowingId(followed.id!!, user.id!!)
        assertThat(count).isEqualTo(1)

        val followed2 = User("followed2", "followed2@example.com").apply { passwordDigest = pe.encode("password") }
        ur.saveAndFlush(followed2)
        user.following.add(followed2)
        ur.saveAndFlush(user)

        count = ur.countByIdAndFollowingId(user.id!!, followed.id!!)
        assertThat(count).isEqualTo(1)
        count = ur.countByIdAndFollowingId(user.id!!, followed2.id!!)
        assertThat(count).isEqualTo(1)
    }

    @Test
    fun `#insertUserRelationShips and #deleteUserRelationShips`() {
        val follower = User("follower", "follower@example.com").apply { passwordDigest = pe.encode("password") }
        val followed = User("followed", "followed@example.com").apply { passwordDigest = pe.encode("password") }
        ur.saveAndFlush(follower)
        ur.saveAndFlush(followed)

        assertThat(ur.countByIdAndFollowingId(follower.id!!, followed.id!!)).isEqualTo(0)
        assertThat(followed.followers).hasSize(0)

        ur.insertUserRelationShips(follower.id!!, followed.id!!)
        em.refresh(followed)

        assertThat(ur.countByIdAndFollowingId(follower.id!!, followed.id!!)).isEqualTo(1)
        assertThat(followed.followers).hasSize(1)

        ur.deleteUserRelationShips(follower.id!!, followed.id!!)
        em.refresh(followed)

        assertThat(ur.countByIdAndFollowingId(follower.id!!, followed.id!!)).isEqualTo(0)
        assertThat(followed.followers).hasSize(0)
    }
}
