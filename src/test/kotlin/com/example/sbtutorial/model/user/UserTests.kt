package com.example.sbtutorial.model.user

import com.ninjasquad.springmockk.MockkBean
import io.mockk.every
import io.mockk.slot
import org.assertj.core.api.Assertions.*
import org.junit.jupiter.api.BeforeEach
import org.junit.jupiter.api.Test
import org.mockito.AdditionalAnswers
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest
import org.springframework.boot.test.autoconfigure.orm.jpa.TestEntityManager
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder
import javax.persistence.PersistenceException
import javax.validation.ConstraintViolationException
import javax.validation.Validation

@DataJpaTest
class UserTests(@Autowired private val em: TestEntityManager) {

    @MockkBean
    private lateinit var us: UsersService

    private val pe: BCryptPasswordEncoder = BCryptPasswordEncoder()

    private lateinit var userForm: UserForm
    private lateinit var user: User

    private val validator = Validation.buildDefaultValidatorFactory().validator


    @BeforeEach
    fun setUp() {
        user = User()
        userForm = UserForm(us, user).apply {
            name = "Example User"; email = "user@example.com"; password = "foobar"; passwordConfirmation = "foobar"
        }

        every { us.save(any()) } answers { em.persistAndFlush(firstArg()) }
        every { us.digest(any()) } answers { pe.encode(firstArg())}
    }


    @Test
    fun `should be valid`() {
        val result = validator.validate(userForm)
        assertThat(result).isEmpty()

        userForm.save()
    }

    @Test
    fun `name should be present`() {
        userForm.name = "     "
        val result = validator.validate(userForm)
        assertThat(result).isNotEmpty.anySatisfy {
            assertThat(it.propertyPath.toString()).isEqualTo("name")
            assertThat(it.messageTemplate).isEqualTo("{user.name.NotBlank}")
        }

        try {
            userForm.save()
            fail<String>("ConstraintViolationException expected")

        } catch (e: ConstraintViolationException) {
            assertThat(e.constraintViolations).anySatisfy {
                assertThat(it.propertyPath.toString()).isEqualTo("name")
                assertThat(it.messageTemplate).isEqualTo("{user.name.NotBlank}")
            }
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

        try {
            userForm.save()
            fail<String>("ConstraintViolationException expected")

        } catch (e: ConstraintViolationException) {
            assertThat(e.constraintViolations).anySatisfy {
                assertThat(it.propertyPath.toString()).isEqualTo("email")
                assertThat(it.messageTemplate).isEqualTo("{user.email.NotBlank}")
            }
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
            userForm.save()
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
            userForm.save()
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

            userForm.save()
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
                userForm.save()
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
        userForm.save()

        val duplicateUserForm = UserForm(us, User()).apply {
            name = "Example User(duplicate)"; email = "user@example.com"
            password = "foobar"; passwordConfirmation = "foobar"
        }
        assertThatThrownBy {
            duplicateUserForm.save()
            fail<String>("PersistenceException expected")
        }.isInstanceOf(PersistenceException::class.java)
    }

    @Test
    fun `email addresses should be saved as lower-case`() {
        val mixedCaseEmail = "Foo@ExAMPle.CoM"
        userForm.apply { email = mixedCaseEmail }.save()
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
    }

    @Test
    fun `#toString`() {
        assertThat(user.toString()).startsWith("User(")
            .contains(user.name, user.email)
    }

    @Test
    fun `#equals and #hashcode`() {
        // 登録前なら一致する
        val user2 = User("user2", "user2@example.com")
        assertThat(user2).isEqualTo(User("user2", "user2@example.com"))
        assertThat(user2.hashCode()).isEqualTo(User("user2", "user2@example.com").hashCode())

        // 登録後は一致しない
        UserForm(us, user2)
            .apply { password = "password"; passwordConfirmation = "password"; save() }
        assertThat(user2).isNotEqualTo(User("user2", "user2@example.com"))
        assertThat(user2.hashCode()).isNotEqualTo(User("user2", "user2@example.com").hashCode())


        // 同一のユーザーから作られたUserFormは一致する
        userForm.save()
        assertThat(UserForm(us, user)).isEqualTo(UserForm(us, user))
    }
}
