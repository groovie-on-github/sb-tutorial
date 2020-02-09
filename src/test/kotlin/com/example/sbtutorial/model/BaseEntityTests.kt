package com.example.sbtutorial.model

import org.assertj.core.api.Assertions.*
import org.junit.jupiter.api.Test
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest
import org.springframework.boot.test.autoconfigure.orm.jpa.TestEntityManager

@DataJpaTest
class BaseEntityTests(@Autowired private val em: TestEntityManager) {

    @Test
    fun `登録後にID、作成・更新日時にアクセスできる|作成・更新日時は同じである`() {
        val entity = BaseEntityImpl("test entity")
        em.persistAndFlush(entity)

        assertThat(entity.id).isNotNull()
        assertThat(entity.createdAt).isNotNull().isEqualTo(entity.updatedAt)
    }

    @Test
    fun `更新後の更新日時は作成日時より後になる`() {
        val entity = BaseEntityImpl("test entity")
        em.persistAndFlush(entity)
        entity.name = "test entity(update)"
        em.persistAndFlush(entity)
        assertThat(entity.updatedAt).isAfter(entity.createdAt)
    }
}
