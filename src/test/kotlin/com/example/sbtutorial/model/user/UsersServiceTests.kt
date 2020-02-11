package com.example.sbtutorial.model.user

import org.assertj.core.api.Assertions.*
import org.junit.jupiter.api.Test
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.boot.test.context.SpringBootTest

@SpringBootTest
class UsersServiceTests(@Autowired private val us: UsersService) {

    @Test
    fun `default user`() {
        val defaultUser = us.findByEmail("example@railstutorial.org")
        assertThat(defaultUser).isNotNull
        assertThat(defaultUser!!.id).isNotNull()
        assertThat(defaultUser.createdAt).isNotNull()
        assertThat(defaultUser.updatedAt).isNotNull()
    }
}
