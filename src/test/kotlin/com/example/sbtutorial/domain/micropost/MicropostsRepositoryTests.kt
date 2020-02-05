package com.example.sbtutorial.domain.micropost

import com.example.sbtutorial.domain.user.User
import com.example.sbtutorial.domain.user.UsersRepository
import org.assertj.core.api.Assertions.*
import org.junit.jupiter.api.*
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest
import java.lang.IllegalStateException
import java.util.*

@DataJpaTest(showSql = true)
class MicropostsRepositoryTests @Autowired constructor(
        private val mr: MicropostsRepository,
        private val ur: UsersRepository) {

    @Test
    fun `ユーザーで検索する`() {
        val user1 = ur.findByEmail("user1@example.com")!!

        var microposts = mr.findAllByUser(user1)
        assertThat(microposts)
            .hasSize(2)
            .extracting("content")
                .containsExactlyInAnyOrder("test micropost1-1", "test micropost1-2")


        val user2 = ur.findByEmail("user2@example.com")!!
        microposts = mr.findAllByUser(user2)
        assertThat(microposts)
            .hasSize(1)
            .extracting("content")
                .containsExactly("test micropost2-1")
    }

    @Test
    fun `存在しないユーザーで検索する`() {
        val microposts = mr.findAllByUser(
                User("unknown user", "unknown@example.com").apply { id = UUID.randomUUID() })
        assertThat(microposts).hasSize(0)
    }

    @Test
    fun `登録されていないユーザーで検索する`() {
        assertThatThrownBy {
            val microposts = mr.findAllByUser(
                    User("unregistered user", "unreg@example.com"))
            assertThat(microposts).hasSize(0)

        }.hasCauseInstanceOf(IllegalStateException::class.java)
    }
}
