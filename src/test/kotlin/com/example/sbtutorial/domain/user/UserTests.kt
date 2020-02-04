package com.example.sbtutorial.domain.user

import com.example.sbtutorial.domain.micropost.Micropost
import org.assertj.core.api.Assertions.*
import org.hamcrest.Matchers.*
import org.junit.jupiter.api.Test
import org.junit.jupiter.api.assertThrows
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest
import org.springframework.boot.test.autoconfigure.orm.jpa.TestEntityManager
import java.util.*
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

        em.refresh(user)
        var found = em.find(User::class.java, user.id)
        assertThat(found)
                .hasFieldOrPropertyWithValue("name", "test user")
                .hasFieldOrPropertyWithValue("email", "user@example.com")

        user.name = "test user(update)"
        user.email = "user_update@example.com"
        em.persistAndFlush(user)

        em.refresh(user)
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

    @Test
    fun `micropostsをカスケード登録・更新できる`() {
        val user = User("test user", "user@example.com")
        val microposts = setOf(
                Micropost("test micropost1-1", user),
                Micropost("test micropost1-2", user),
                Micropost("test micropost1-3", user))
        user.microposts.addAll(microposts)

        //　未登録状態チェック
        assertThat(user.id).isNull()
        microposts.forEach { assertThat(it.id).isNull() }

        // 登録後の状態チェック
        em.persistAndFlush(user)
        assertThat(user).hasNoNullFieldsOrProperties()
        microposts.forEach {
            assertThat(it).hasNoNullFieldsOrProperties()
            assertThat(it.updatedAt).isEqualTo(it.createdAt)
        }

        // 更新後の状態チェック
        val micropost = user.microposts.first()
        micropost.content = "test micropost1-1(update)"
        em.persistAndFlush(user)
        assertThat(micropost.createdAt).isNotEqualTo(micropost.updatedAt)

        // 削除前の存在チェック
        assertThat(user.microposts).hasSize(3)

        // 削除後の存在チェック
        user.microposts.remove(micropost)
        assertThat(user.microposts).hasSize(2)
        em.persistAndFlush(user)
        em.refresh(user)
        val found = em.find(Micropost::class.java, micropost.id)
        assertThat(found).isNull()
    }

    @Test
    fun `micropostsをカスケード削除できる`() {
        val user = User("test user", "user@example.com")
        val microposts = setOf(
                Micropost("test micropost1-1", user),
                Micropost("test micropost1-2", user),
                Micropost("test micropost1-3", user))
        user.microposts.addAll(microposts)

        em.persistAndFlush(user)

        // 削除前の状態チェック
        microposts.forEach {
            val found = em.find(Micropost::class.java, it.id)
            assertThat(found).isNotNull.isEqualTo(it)
        }

        // 削除後の状態チェック
        em.remove(user)
        microposts.forEach {
            val found = em.find(Micropost::class.java, it.id)
            assertThat(found).isNull()
        }
    }

    @Test
    fun `micropostsをフェッチできる`() {
        val user = User("test user", "user@example.com")
        val microposts = setOf(
                Micropost("test micropost1-1", user),
                Micropost("test micropost1-2", user),
                Micropost("test micropost1-3", user))

        em.persistAndFlush(user)
        microposts.forEach { em.persistAndFlush(it) }

        assertThat(user.microposts).hasSize(0)

        em.refresh(user)
        assertThat(user.microposts).hasSize(3)
    }
}
