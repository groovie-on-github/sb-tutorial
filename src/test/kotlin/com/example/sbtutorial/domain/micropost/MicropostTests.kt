package com.example.sbtutorial.domain.micropost

import com.example.sbtutorial.domain.user.User
import org.assertj.core.api.Assertions.*
import org.junit.jupiter.api.BeforeEach
import org.junit.jupiter.api.Test
import org.junit.jupiter.api.assertThrows
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest
import org.springframework.boot.test.autoconfigure.orm.jpa.TestEntityManager
import java.util.*
import javax.validation.ConstraintViolationException

@DataJpaTest(showSql = true)
class MicropostTests(@Autowired private val em: TestEntityManager) {

    private val user1: User = User("test user1", "user1@example.com")

    @BeforeEach
    fun setUp() {
        em.persistAndFlush(user1)
    }


    @Test
    fun `登録・更新ができる`() {
        val micropost = Micropost("test micropost", user1)
        assertThat(micropost.id).isNull()
        em.persistAndFlush(micropost)
        assertThat(micropost.id).isNotNull()

        em.refresh(micropost)
        var found = em.find(Micropost::class.java, micropost.id)
        assertThat(found)
                .hasFieldOrPropertyWithValue("content", "test micropost")
                .hasFieldOrPropertyWithValue("user", user1)

        val user2 = User("test user2", "user2@example.com")
        em.persistAndFlush(user2)
        micropost.content = "a".repeat(140)
        micropost.user = user2
        em.persistAndFlush(micropost)

        em.refresh(micropost)
        found = em.find(Micropost::class.java, micropost.id)
        assertThat(found)
                .hasFieldOrPropertyWithValue("content", "a".repeat(140))
                .hasFieldOrPropertyWithValue("user", user2)
    }

    @Test
    fun `contentはblankでは登録できない`() {
        val blankContents = listOf("", " ", "　")
        blankContents.forEach { blankContent ->
            assertThrows<ConstraintViolationException> {
                em.persistAndFlush(Micropost(blankContent, user1))
            }
        }
    }

    @Test
    fun `140文字を超えるcontentは登録できない`() {
        assertThrows<ConstraintViolationException> {
            em.persistAndFlush(Micropost("a".repeat(141), user1))
        }
    }

    @Test
    fun `userがnullでは登録できない`() {
        assertThrows<ConstraintViolationException> {
            em.persistAndFlush(Micropost("test micropost", null))
        }
    }

    @Test
    fun `存在しないuserでは登録できない`() {
        val unregUser = User("unregistered user", "unreg@example.com")
        assertThrows<IllegalStateException> {
            em.persistAndFlush(Micropost("test micropost", unregUser))
        }
    }
}
