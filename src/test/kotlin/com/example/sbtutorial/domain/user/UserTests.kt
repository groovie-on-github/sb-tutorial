package com.example.sbtutorial.domain.user

import com.example.sbtutorial.domain.micropost.Micropost
import org.assertj.core.api.Assertions.*
import org.junit.jupiter.api.Test
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest
import org.springframework.boot.test.autoconfigure.orm.jpa.TestEntityManager
import javax.persistence.PersistenceException
import javax.validation.ConstraintViolationException

@DataJpaTest(showSql = true)
class UserTests(@Autowired private val em: TestEntityManager) {

    @Test
    fun `登録・更新ができる`() {
        val user01 = User("test user01", "user01@example.com")
        assertThat(user01.id).isNull()

        em.persistAndFlush(user01)
        assertThat(user01.id).isNotNull()

        em.refresh(user01)
        var found = em.find(User::class.java, user01.id)
        assertThat(found)
            .hasFieldOrPropertyWithValue("name", "test user01")
            .hasFieldOrPropertyWithValue("email", "user01@example.com")

        user01.name = "test user01(update)"
        user01.email = "user01_update@example.com"
        em.persistAndFlush(user01)

        em.refresh(user01)
        found = em.find(User::class.java, user01.id)
        assertThat(found)
            .hasFieldOrPropertyWithValue("name", "test user01(update)")
            .hasFieldOrPropertyWithValue("email", "user01_update@example.com")
    }

    @Test
    fun `nameはblankでは登録できない`() {
        val blankNames = listOf("", " ", "　")
        blankNames.forEach { blankName ->
            assertThatThrownBy {
                em.persistAndFlush(User(blankName, "user@example.com"))
            }.isInstanceOf(ConstraintViolationException::class.java)
             .hasMessageContainingAll("name", "javax.validation.constraints.NotBlank.message")
        }
    }

    @Test
    fun `emailはblankでは登録できない`() {
        val blankEmails = listOf("", " ", "　")
        blankEmails.forEach { blankEmail ->
            assertThatThrownBy {
                em.persistAndFlush(User("test user", blankEmail))
            }.isInstanceOf(ConstraintViolationException::class.java)
             .hasMessageContainingAll("email", "javax.validation.constraints.NotBlank.message")
        }
    }

    @Test
    fun `emailはE-mail形式でないと登録できない`() {
        assertThatThrownBy {
            em.persistAndFlush(User("test user", "invalid-user-email"))
        }.isInstanceOf(ConstraintViolationException::class.java)
         .hasMessageContainingAll("email", "javax.validation.constraints.Email.message")
    }

    @Test
    fun `emailは重複登録できない`() {
        em.persistAndFlush(User("test user01", "user01@example.com"))

        assertThatThrownBy {
            em.persistAndFlush(User("test another user01", "user01@example.com"))
        }.isInstanceOf(PersistenceException::class.java)
         .hasCauseInstanceOf(org.hibernate.exception.ConstraintViolationException::class.java)
    }

    @Test
    fun `micropostsをカスケード登録・更新できる`() {
        val user01 = User("test user01", "user01@example.com")
        val microposts = setOf(
            Micropost("test micropost01-1", user01),
            Micropost("test micropost01-2", user01),
            Micropost("test micropost01-3", user01))
        user01.microposts.addAll(microposts)

        //　未登録状態チェック
        assertThat(user01.id).isNull()
        microposts.forEach { assertThat(it.id).isNull() }

        // 登録後の状態チェック
        em.persistAndFlush(user01)
        assertThat(user01).hasNoNullFieldsOrProperties()
        microposts.forEach {
            assertThat(it).hasNoNullFieldsOrProperties()
            assertThat(it.updatedAt).isEqualTo(it.createdAt)
        }

        // 更新後の状態チェック
        val micropost = user01.microposts.first()
        micropost.content = "test micropost01-1(update)"
        em.persistAndFlush(user01)
        assertThat(micropost.createdAt).isNotEqualTo(micropost.updatedAt)

        // 削除前の存在チェック
        assertThat(user01.microposts).hasSize(3)

        // 削除後の存在チェック
        user01.microposts.remove(micropost)
        assertThat(user01.microposts).hasSize(2)
        em.persistAndFlush(user01)
        em.refresh(user01)
        val found = em.find(Micropost::class.java, micropost.id)
        assertThat(found).isNull()
    }

    @Test
    fun `micropostsをカスケード削除できる`() {
        val user01 = User("test user01", "user01@example.com")
        val microposts = setOf(
            Micropost("test micropost01-1", user01),
            Micropost("test micropost01-2", user01),
            Micropost("test micropost01-3", user01))
        user01.microposts.addAll(microposts)

        em.persistAndFlush(user01)

        // 削除前の状態チェック
        microposts.forEach {
            val found = em.find(Micropost::class.java, it.id)
            assertThat(found).isNotNull.isEqualTo(it)
        }

        // 削除後の状態チェック
        em.remove(user01)
        microposts.forEach {
            val found = em.find(Micropost::class.java, it.id)
            assertThat(found).isNull()
        }
    }

    @Test
    fun `micropostsをフェッチできる`() {
        val user01 = User("test user01", "user01@example.com")
        val microposts = setOf(
            Micropost("test micropost01-1", user01),
            Micropost("test micropost01-2", user01),
            Micropost("test micropost01-3", user01))

        em.persistAndFlush(user01)
        microposts.forEach { em.persistAndFlush(it) }

        assertThat(user01.microposts).hasSize(0)

        em.refresh(user01)
        assertThat(user01.microposts).hasSize(3)
    }
}
