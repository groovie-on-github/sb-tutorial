package com.example.sbtutorial.model.user

import org.assertj.core.api.Assertions.*
import org.junit.jupiter.api.BeforeEach
import org.junit.jupiter.api.Test
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest
import org.springframework.boot.test.autoconfigure.orm.jpa.TestEntityManager
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder
import javax.persistence.PersistenceException
import javax.validation.ConstraintViolationException
import javax.validation.Validation

@DataJpaTest
class UserTests(@Autowired private val em: TestEntityManager) {

    private val pe: BCryptPasswordEncoder = BCryptPasswordEncoder()

    private lateinit var userForm: UserForm
    private lateinit var user: User

    private val validator = Validation.buildDefaultValidatorFactory().validator


    @BeforeEach
    fun setUp() {
        userForm = UserForm("Example User", "user@example.com", "foobar", "foobar", pe)
        user = User()
    }


    @Test
    fun `should be valid`() {
        val result = validator.validate(userForm)
        assertThat(result).isEmpty()

        em.persistAndFlush(userForm.populate(user))
    }

    @Test
    fun `name should be present`() {
        userForm.name = "     "
        val result = validator.validate(userForm)
        assertThat(result).isNotEmpty.anySatisfy {
            assertThat(it.propertyPath.toString()).isEqualTo("name")
            assertThat(it.messageTemplate).isEqualTo("{user.name.NotBlank}")
        }

        val result2 = validator.validate(userForm.populate(user))
        assertThat(result2).isNotEmpty.anySatisfy {
            assertThat(it.propertyPath.toString()).isEqualTo("name")
            assertThat(it.messageTemplate).isEqualTo("{user.name.NotBlank}")
        }
    }

    @Test
    fun `email should be present`() {
        userForm.email = "     "
        val result = validator.validate(userForm)
        assertThat(result).isNotEmpty.anySatisfy {
            assertThat(it.propertyPath.toString()).isEqualTo("email")
            assertThat(it.messageTemplate).isEqualTo("{user.email.NotBlank}")
        }

        val result2 = validator.validate(userForm.populate(user))
        assertThat(result2).isNotEmpty.anySatisfy {
            assertThat(it.propertyPath.toString()).isEqualTo("email")
            assertThat(it.messageTemplate).isEqualTo("{user.email.NotBlank}")
        }
    }

    @Test
    fun `name should not be too long`() {
        userForm.name = "a".repeat(51)
        val result = validator.validate(userForm)
        assertThat(result).isNotEmpty.anySatisfy {
            assertThat(it.propertyPath.toString()).isEqualTo("name")
            assertThat(it.messageTemplate).isEqualTo("{user.name.Size}")
        }

        try {
            em.persistAndFlush(userForm.populate(user))
            fail<String>("ConstraintViolationException expected")

        } catch(e: ConstraintViolationException) {
            assertThat(e.constraintViolations).anySatisfy {
                assertThat(it.propertyPath.toString()).isEqualTo("name")
                assertThat(it.messageTemplate).isEqualTo("{user.name.Size}")
            }
        }
    }

    @Test
    fun `email should not be too long`() {
        userForm.email = "a".repeat(244) + "@example.com"
        val result = validator.validate(userForm)
        assertThat(result).isNotEmpty.anySatisfy {
            assertThat(it.propertyPath.toString()).isEqualTo("email")
            assertThat(it.messageTemplate).isEqualTo("{user.email.Size}")
        }

        try {
            em.persistAndFlush(userForm.populate(user))
            fail<String>("ConstraintViolationException expected")

        } catch(e: ConstraintViolationException) {
            assertThat(e.constraintViolations).anySatisfy {
                assertThat(it.propertyPath.toString()).isEqualTo("email")
                assertThat(it.messageTemplate).isEqualTo("{user.email.Size}")
            }
        }
    }

    @Test
    fun `email validation should accept valid addresses`() {
        val validAddresses = arrayOf("user@example.com", "USER@foo.COM", "A_US-ER@foo.bar.org",
                                     "first.last@foo.jp", "alice+bob@baz.cn")
        validAddresses.forEach { validAddress ->
            userForm.email = validAddress
            val result = validator.validate(userForm)
            assertThat(result).isEmpty()

            em.persistAndFlush(userForm.populate(user))
        }
    }

    @Test
    fun `email validation should reject invalid addresses`() {
        val invalidAddresses = arrayOf("user@example,com", "user_at_foo.org", "user.name@example.",
                                       "foo@bar_baz.com", "foo@bar+baz.com", "foo@bar..com")
        invalidAddresses.forEach { invalidAddress ->
            userForm.email = invalidAddress
            val result = validator.validate(userForm)
            assertThat(result).isNotEmpty.anySatisfy {
                assertThat(it.propertyPath.toString()).isEqualTo("email")
                assertThat(it.messageTemplate).isEqualTo("{user.email.Email}")
            }

            try {
                em.persistAndFlush(userForm.populate(user))
                fail<String>("ConstraintViolationException expected")

            } catch (e: ConstraintViolationException) {
                assertThat(e.constraintViolations).anySatisfy {
                    assertThat(it.propertyPath.toString()).isEqualTo("email")
                    assertThat(it.messageTemplate).isEqualTo("{user.email.Email}")
                }
            }
        }
    }

    @Test
    fun `email addresses should be unique`() {
        em.persistAndFlush(userForm.populate(user))
        val duplicateUser = userForm.populate(User())
        assertThatThrownBy {
            em.persistAndFlush(duplicateUser)
            fail<String>("PersistenceException expected")
        }.isInstanceOf(PersistenceException::class.java)
    }

    @Test
    fun `email addresses should be saved as lower-case`() {
        userForm.populate(user)
        val mixedCaseEmail = "Foo@ExAMPle.CoM"
        user.email = mixedCaseEmail
        em.persistAndFlush(user)
        em.refresh(user)
        assertThat(user.email).isEqualTo(mixedCaseEmail.toLowerCase())
    }

    @Test
    fun `password should be present (nonblank)`() {
        userForm.password = " ".repeat(6)
        userForm.passwordConfirmation = userForm.password
        val result = validator.validate(userForm)
        assertThat(result).isNotEmpty.anySatisfy {
            assertThat(it.propertyPath.toString()).isEqualTo("password")
            assertThat(it.messageTemplate).isEqualTo("{user.password.NotBlank}")
        }
    }

    @Test
    fun `password should have a minimum length`() {
        userForm.password = "a".repeat(5)
        userForm.passwordConfirmation = userForm.password
        val result = validator.validate(userForm)
        assertThat(result).isNotEmpty.anySatisfy {
            assertThat(it.propertyPath.toString()).isEqualTo("password")
            assertThat(it.messageTemplate).isEqualTo("{user.password.Size}")
        }
    }

    @Test
    fun `パスワードと確認用パスワードは一致しなければならない`() {
        userForm.passwordConfirmation = "foobaz"
        val result = validator.validate(userForm)
        assertThat(result).isNotEmpty.anySatisfy {
            assertThat(it.propertyPath.toString()).isEqualTo("passwordConfirmation")
            assertThat(it.messageTemplate)
                .isEqualTo("{user.passwordConfirmation.PasswordConfirm}")
        }

        assertThatThrownBy {
            em.persistAndFlush(userForm.populate(user))
            fail<String>("PersistenceException expected")
        }.isInstanceOf(PersistenceException::class.java)
    }

    @Test
    fun `#toString`() {
        userForm.populate(user)
        for(i in 1..2) {
            assertThat(user.toString()).startsWith("User(")
                .contains(user.name, user.email)
                .doesNotContain(user.passwordDigest)
            em.persistAndFlush(user)
        }
    }

    @Test
    fun `#equals and #hashcode`() {
        assertThat(userForm).isEqualTo(UserForm("Example User", "user@example.com", "foobar", "foobar", pe))

        userForm.populate(user)
        // パスワードダイジェストはpopulateするたびに変わるので一致しない
        assertThat(user).isNotEqualTo(userForm.populate(User()))
        assertThat(user.hashCode()).isNotEqualTo(userForm.populate(User()).hashCode())

        val user2 = User("user2", "user2@example.com")
        assertThat(user2).isEqualTo(User("user2", "user2@example.com"))
        assertThat(user2.hashCode()).isEqualTo(User("user2", "user2@example.com").hashCode())
    }
}
