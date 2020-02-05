package com.example.sbtutorial.domain.micropost

import com.example.sbtutorial.domain.user.User
import org.assertj.core.api.Assertions.*
import org.junit.jupiter.api.BeforeEach
import org.junit.jupiter.api.Test
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest
import org.springframework.boot.test.autoconfigure.orm.jpa.TestEntityManager
import java.util.*
import javax.persistence.PersistenceException
import javax.validation.ConstraintViolationException

@DataJpaTest(showSql = true)
class MicropostTests(@Autowired private val em: TestEntityManager) {

    private val user01 = User("test user01", "user01@example.com")

    @BeforeEach
    fun setUp() {
        em.persistAndFlush(user01)
    }


    @Test
    fun `登録・更新ができる`() {
        val micropost = Micropost("test micropost01-1", user01)
        assertThat(micropost.id).isNull()
        em.persistAndFlush(micropost)
        assertThat(micropost.id).isNotNull()

        em.refresh(micropost)
        var found = em.find(Micropost::class.java, micropost.id)
        assertThat(found)
            .hasFieldOrPropertyWithValue("content", "test micropost01-1")
            .hasFieldOrPropertyWithValue("user", user01)

        val user02 = User("test user02", "user02@example.com")
        em.persistAndFlush(user02)
        micropost.content = "a".repeat(140)
        micropost.user = user02
        em.persistAndFlush(micropost)

        em.refresh(micropost)
        found = em.find(Micropost::class.java, micropost.id)
        assertThat(found)
            .hasFieldOrPropertyWithValue("content", "a".repeat(140))
            .hasFieldOrPropertyWithValue("user", user02)
    }

    @Test
    fun `contentはblankでは登録できない`() {
        val blankContents = listOf("", " ", "　")
        blankContents.forEach { blankContent ->
            assertThatThrownBy {
                em.persistAndFlush(Micropost(blankContent, user01))
            }.isInstanceOf(ConstraintViolationException::class.java)
             .hasMessageContainingAll("content", "javax.validation.constraints.NotBlank.message")
        }
    }

    @Test
    fun `140文字を超えるcontentは登録できない`() {
        assertThatThrownBy {
            em.persistAndFlush(Micropost("a".repeat(141), user01))
        }.isInstanceOf(ConstraintViolationException::class.java)
         .hasMessageContainingAll("content", "140", "javax.validation.constraints.Size.message")
    }

    @Test
    fun `userがnullでは登録できない`() {
        assertThatThrownBy {
            em.persistAndFlush(Micropost("test micropost", null))
        }.isInstanceOf(ConstraintViolationException::class.java)
         .hasMessageContainingAll("user", "javax.validation.constraints.NotNull.message")
    }

    @Test
    fun `登録されていないuserでは登録できない`() {
        val unregUser = User("unregistered user", "unreg@example.com")
        assertThatThrownBy {
            em.persistAndFlush(Micropost("test micropost", unregUser))
        }.isInstanceOf(IllegalStateException::class.java)
         .hasMessageContainingAll("user", "null")
    }

    @Test
    fun `存在しないuserでは登録できない`() {
        val unknownUser = User("unknown user", "unknown@example.com")
                .apply { id = UUID.randomUUID() }
        assertThatThrownBy {
            em.persistAndFlush(Micropost("test micropost", unknownUser))
        }.isInstanceOf(PersistenceException::class.java)
         .hasCauseInstanceOf(org.hibernate.exception.ConstraintViolationException::class.java)
    }
}
