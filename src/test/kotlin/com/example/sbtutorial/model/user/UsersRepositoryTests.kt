package com.example.sbtutorial.model.user

import org.assertj.core.api.Assertions.*
import org.junit.jupiter.api.BeforeEach
import org.junit.jupiter.api.Test
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder

@DataJpaTest
class UsersRepositoryTests (@Autowired private val ur: UsersRepository) {

    private val pe: BCryptPasswordEncoder = BCryptPasswordEncoder()

    private lateinit var user: User

    @BeforeEach
    fun setUp() {
        user = UserForm("Example User", "user@example.com".toUpperCase(),
            "foobar", "foobar", pe).populate(User())
        ur.saveAndFlush(user)
    }

    @Test
    fun `#findByEmail`() {
        val email = "user@example.com"
        var found = ur.findByEmail(email)
        assertThat(found.also(::println)).isEqualTo(user)

        found = ur.findByEmail(email.toUpperCase())
        assertThat(found).isNull()

        found = ur.findByEmail("unknown@example.com")
        assertThat(found).isNull()
    }
}
