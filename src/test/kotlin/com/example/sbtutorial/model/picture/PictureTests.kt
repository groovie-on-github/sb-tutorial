package com.example.sbtutorial.model.picture

import org.apache.commons.lang3.RandomUtils
import org.assertj.core.api.Assertions.*
import org.junit.jupiter.api.Test
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest
import org.springframework.boot.test.autoconfigure.orm.jpa.TestEntityManager

@DataJpaTest
class PictureTests @Autowired constructor(private val em: TestEntityManager, private val pr: PicturesRepository) {

    @Test
    fun `test content limit`() {
        assertThatCode {
            val p1 = Picture(RandomUtils.nextBytes(Picture.CONTENT_SIZE_MAX))
            pr.saveAndFlush(p1)
        }.doesNotThrowAnyException()

        assertThatThrownBy {
            val p2 = Picture(RandomUtils.nextBytes(Picture.CONTENT_SIZE_MAX + 1))
            pr.saveAndFlush(p2)
        }
    }
}