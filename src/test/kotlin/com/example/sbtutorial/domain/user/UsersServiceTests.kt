package com.example.sbtutorial.domain.user

import com.example.sbtutorial.TestDataSupplier
import org.assertj.core.api.Assertions.*
import org.junit.jupiter.api.Test
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.boot.test.context.SpringBootTest
import org.springframework.transaction.annotation.Transactional

@SpringBootTest
@Transactional
class UsersServiceTests (@Autowired private val us: UsersService
    ): TestDataSupplier(usersRepository = us.repository) {

    @Test
    fun `全てのユーザーを取得できる`() {
        val users = us.getAllUsers()
        assertThat(users).hasSize(3)
                .containsOnly(user1, user1a, user2)
    }

    @Test
    fun `IDでユーザーを取得できる`() {
        val user = us.getUserById(user1.id!!)
        assertThat(user)
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
        us.delete(user1)

        val found = us.getUserById(user1.id!!)
        assertThat(found).isNull()
    }
}
