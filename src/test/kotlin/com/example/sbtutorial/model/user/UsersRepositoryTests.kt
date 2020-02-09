package com.example.sbtutorial.model.user

import org.assertj.core.api.Assertions.*
import org.junit.jupiter.api.BeforeEach
import org.junit.jupiter.api.Test
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest

@DataJpaTest
class UsersRepositoryTests(@Autowired private val ur: UsersRepository) {

    private lateinit var user: User

    @BeforeEach
    fun setUp() {
        user = User("Example User", "user@example.com",
            "foobar", "foobar")
        ur.saveAndFlush(user)
    }

    @Test
    fun `#findByEmail`() {
        var found = ur.findByEmail("user@example.com")
        assertThat(found.also(::println)).isEqualTo(user)

        found = ur.findByEmail("unknown@example.com")
        assertThat(found).isNull()
    }
}
