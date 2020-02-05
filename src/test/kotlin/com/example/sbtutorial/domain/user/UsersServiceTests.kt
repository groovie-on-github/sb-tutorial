package com.example.sbtutorial.domain.user

import org.assertj.core.api.Assertions.*
import org.junit.jupiter.api.Test
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.boot.test.context.SpringBootTest
import org.springframework.transaction.annotation.Transactional

@SpringBootTest
@Transactional
class UsersServiceTests (@Autowired private val us: UsersService) {

    @Test
    fun `全てのユーザーを取得できる`() {
        val users = us.getAllUsers()
        assertThat(users).hasSize(3)
            .extracting("email")
                .containsExactlyInAnyOrder(
                    "user1@example.com",
                    "user1.alternate@example.com",
                    "user2@example.com")
    }

    @Test
    fun `IDでユーザーを取得できる`() {
        val user1 = us.getAllUsers().find { it.email == "user1@example.com" }!!

        val found = us.getUserById(user1.id!!)
        assertThat(found)
            .hasFieldOrPropertyWithValue("name", "test user1")
            .hasFieldOrPropertyWithValue("email", "user1@example.com")
    }

    @Test
    fun `ユーザーを保存できる`() {
        val user = User("test user3", "user3@example.com")
        us.save(user)
        assertThat(user.id).isNotNull()

        val found = us.getUserById(user.id!!)
        assertThat(found?.id).isNotNull()
        assertThat(found)
            .hasFieldOrPropertyWithValue("name", "test user3")
            .hasFieldOrPropertyWithValue("email", "user3@example.com")
    }

    @Test
    fun `ユーザーを削除できる`() {
        val user1 = us.getAllUsers().find { it.email == "user1@example.com" }!!

        us.delete(user1)

        val found = us.getUserById(user1.id!!)
        assertThat(found).isNull()
    }
}
