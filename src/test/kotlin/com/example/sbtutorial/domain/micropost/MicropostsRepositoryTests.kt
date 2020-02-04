package com.example.sbtutorial.domain.micropost

import com.example.sbtutorial.TestDataSupplier
import com.example.sbtutorial.domain.user.UsersRepository
import org.assertj.core.api.Assertions.*
import org.junit.jupiter.api.*
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest
import java.util.*

@DataJpaTest(showSql = true)
class MicropostsRepositoryTests @Autowired constructor(
        private val mr: MicropostsRepository,
        ur: UsersRepository
    ): TestDataSupplier(usersRepository = ur,
                        micropostsRepository = mr) {

    @Test
    fun `ユーザーIDで検索する`() {
        var microposts = mr.findAllByUserId(user1.id!!)
        assertThat(microposts)
                .hasSize(2)
                .containsOnly(micropost11, micropost12)

        microposts = mr.findAllByUserId(user2.id!!)
        assertThat(microposts)
                .hasSize(1)
                .containsOnly(micropost21)
    }

    @Test
    fun `存在しないユーザーIDで検索する`() {
        val microposts = mr.findAllByUserId(UUID.randomUUID())
        assertThat(microposts).hasSize(0)
    }
}
