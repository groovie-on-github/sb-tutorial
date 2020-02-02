package com.example.sbtutorial.domain.user

import org.assertj.core.api.Assertions.*
import org.junit.jupiter.api.Test
import org.junit.jupiter.api.assertThrows
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest
import org.springframework.boot.test.autoconfigure.orm.jpa.TestEntityManager
import javax.persistence.PersistenceException
import javax.validation.ConstraintViolationException

@DataJpaTest(showSql = true)
class UserTests(@Autowired private val em: TestEntityManager) {

    @Test
    fun `登録・更新ができる`() {
        val user = User("test user", "user@example.com")
        assertThat(user.id).isNull()

        em.persistAndFlush(user)
        assertThat(user.id).isNotNull()

        var found = em.find(User::class.java, user.id)
        assertThat(found)
                .hasFieldOrPropertyWithValue("name", "test user")
                .hasFieldOrPropertyWithValue("email", "user@example.com")

        user.name = "test user(update)"
        user.email = "user_update@example.com"
        em.persistAndFlush(user)

        found = em.find(User::class.java, user.id)
        assertThat(found)
                .hasFieldOrPropertyWithValue("name", "test user(update)")
                .hasFieldOrPropertyWithValue("email", "user_update@example.com")
    }

    @Test
    fun `nameはblankでは登録できない`() {
        val blankNames = listOf("", " ", "　")
        blankNames.forEach { blankName ->
            assertThrows<ConstraintViolationException> {
                em.persistAndFlush(User(blankName, "user@example.com"))
            }
        }
    }

    @Test
    fun `emailはblankでは登録できない`() {
        val blankEmails = listOf("", " ", "　")
        blankEmails.forEach { blankEmail ->
            assertThrows<ConstraintViolationException> {
                em.persistAndFlush(User("test user", blankEmail))
            }
        }
    }

    @Test
    fun `emailはE-mail形式でないと登録できない`() {
        assertThrows<ConstraintViolationException> {
            em.persistAndFlush(User("test user", "invalid-user-email"))
        }
    }

    @Test
    fun `emailは重複登録できない`() {
        em.persistAndFlush(User("test user", "user@example.com"))

        assertThrows<PersistenceException> {
            em.persistAndFlush(User("test another user", "user@example.com"))
        }
    }
}