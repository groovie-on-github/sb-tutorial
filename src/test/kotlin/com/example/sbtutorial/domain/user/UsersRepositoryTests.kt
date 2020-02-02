package com.example.sbtutorial.domain.user

import com.example.sbtutorial.TestDataSupplier
import org.assertj.core.api.Assertions.*
import org.junit.jupiter.api.*
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest

@DataJpaTest(showSql = true)
class UsersRepositoryTests(
        @Autowired private val ur: UsersRepository
    ): TestDataSupplier(usersRepository = ur) {

    @Test
    fun `名前で検索する`() {
        var users = ur.findByName("test user1")
        assertThat(users).hasSize(2)
                .containsOnly(user1, user1a)
    }

    @Test
    fun `存在しない名前で検索する`() {
        var users = ur.findByName("")
        assertThat(users).hasSize(0)
    }

    @Test
    fun `メールアドレスで検索する`() {
        var user = ur.findByEmail("user2@example.com")
        assertThat(user).isNotNull
                .hasFieldOrPropertyWithValue("name", "test user2")
    }

    @Test
    fun `存在しないメールアドレスで検索する`() {
        var user = ur.findByEmail("")
        assertThat(user).isNull()
    }
}
