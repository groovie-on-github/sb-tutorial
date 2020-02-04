package com.example.sbtutorial.domain.micropost

import org.assertj.core.api.Assertions.*
import org.junit.jupiter.api.Test
import org.junit.jupiter.api.assertThrows
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest
import org.springframework.boot.test.autoconfigure.orm.jpa.TestEntityManager
import java.util.*
import javax.validation.ConstraintViolationException

@DataJpaTest(showSql = true)
class MicropostTests(@Autowired private val em: TestEntityManager) {

    private val userId1: UUID = UUID.randomUUID()

    @Test
    fun `登録・更新ができる`() {
        val micropost = Micropost("test micropost", userId1)
        assertThat(micropost.id).isNull()
        em.persistAndFlush(micropost)
        assertThat(micropost.id).isNotNull()

        var found = em.find(Micropost::class.java, micropost.id)
        assertThat(found)
                .hasFieldOrPropertyWithValue("content", "test micropost")
                .hasFieldOrPropertyWithValue("userId", userId1)

        val userId2 = UUID.randomUUID()
        micropost.content = "a".repeat(140)
        micropost.userId = userId2
        em.persistAndFlush(micropost)

        found = em.find(Micropost::class.java, micropost.id)
        assertThat(found)
                .hasFieldOrPropertyWithValue("content", "a".repeat(140))
                .hasFieldOrPropertyWithValue("userId", userId2)
    }

    @Test
    fun `contentはblankでは登録できない`() {
        val blankContents = listOf("", " ", "　")
        blankContents.forEach { blankContent ->
            assertThrows<ConstraintViolationException> {
                em.persistAndFlush(Micropost(blankContent, userId1))
            }
        }
    }

    @Test
    fun `140文字を超えるcontentは登録できない`() {
        assertThrows<ConstraintViolationException> {
            em.persistAndFlush(Micropost("a".repeat(141), userId1))
        }
    }

    @Test
    fun `userがnullでは登録できない`() {
        assertThrows<ConstraintViolationException> {
            em.persistAndFlush(Micropost("test micropost", null))
        }
    }
}
