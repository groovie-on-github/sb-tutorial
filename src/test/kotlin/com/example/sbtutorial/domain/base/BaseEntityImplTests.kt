package com.example.sbtutorial.domain.base

import org.assertj.core.api.Assertions.*
import org.junit.jupiter.api.Test
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest
import org.springframework.boot.test.autoconfigure.orm.jpa.TestEntityManager
import java.lang.Exception
import java.util.*

@DataJpaTest
class BaseEntityImplTests(@Autowired private val em: TestEntityManager) {

    @Test
    fun `作成・更新日時が正しくセットされるか`() {
        val entity = BaseEntityImpl("test entity")
        em.persistAndFlush(entity)

        val createdAt = entity.createdAt
        val updatedAt = entity.updatedAt

        assertThat(entity.createdAt).isNotNull()
        assertThat(entity.updatedAt).isEqualTo(createdAt)

        entity.name = "test entity(update)"
        em.persistAndFlush(entity)

        assertThat(entity.createdAt).isEqualTo(createdAt)
        assertThat(entity.updatedAt).isAfter(updatedAt)
    }

    @Test
    fun `Entityに関するテスト`() {
        // Q.ID等を移し替えて登録できる？
        // A.できなかった
        val entity1 = BaseEntityImpl("test entity")
        em.persistAndFlush(entity1)
        val entity2 = BaseEntityImpl("test entity2").apply {
            id = entity1.id
            createdAt = entity1.createdAt
            updatedAt = entity1.updatedAt
        }
        assertThatThrownBy { em.persistAndFlush(entity2) }

        // Q.flushしなければ同一IDで登録できる？
        // A.できなかった
        val entity3 = BaseEntityImpl("test entity3")
        em.persist(entity3)
        val entity4 = BaseEntityImpl("test entity4").apply {
            id = UUID.fromString(entity3.id.toString())
        }
        assertThatThrownBy { em.persist(entity4) }

        // Q.IDは更新できる？
        // できなかった
        val entity5 = BaseEntityImpl("test entity5")
        em.persistAndFlush(entity5)
        val id5 = entity5.id
        entity5.id = UUID.randomUUID()
        assertThat(entity5.id).isNotEqualTo(id5)
        assertThatThrownBy {
            em.persistAndFlush(entity5)
            fail<Exception>("エラーになるはず")
        }
    }
}
