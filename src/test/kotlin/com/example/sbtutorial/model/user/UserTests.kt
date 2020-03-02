package com.example.sbtutorial.model.user

import com.example.sbtutorial.model.micropost.Micropost
import com.example.sbtutorial.model.micropost.MicropostsRepository
import com.ninjasquad.springmockk.MockkBean
import io.mockk.every
import org.assertj.core.api.Assertions.*
import org.assertj.core.api.SoftAssertions
import org.junit.jupiter.api.BeforeEach
import org.junit.jupiter.api.Test
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest
import org.springframework.boot.test.autoconfigure.orm.jpa.TestEntityManager
import org.springframework.dao.DataIntegrityViolationException
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder
import javax.persistence.PersistenceException
import javax.validation.ConstraintViolationException
import javax.validation.Validation

@DataJpaTest
class UserTests @Autowired constructor(private val em: TestEntityManager,
                                       private val ur: UsersRepository, private val mr: MicropostsRepository) {

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
        every { us.delete(any()) } answers { em.remove(firstArg()) }
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

    @Test
    fun `associated microposts should be destroyed`() {
        userForm.save()
        user.micropostList.add(Micropost("Lorem ipsum", user))
        em.persistAndFlush(user)
        val before = mr.count()
        assertThat(before).isGreaterThanOrEqualTo(1)
        userForm.delete()
        assertThat(mr.count()).isEqualTo(before - 1)
    }

    @Test
    fun `test relationships`() {
        val s = SoftAssertions()
        val follower1 = User("follower1", "follower1@example.com").apply { passwordDigest = pe.encode("password") }
        println(">> 0-1 save follower1")
        ur.saveAndFlush(follower1)
        s.assertThat(follower1.following).hasSize(0)
        s.assertThat(follower1.followers).hasSize(0)

        val followed1 = User("followed1", "followed1@example.com").apply { passwordDigest = pe.encode("password") }
        println(">> 0-2 save followed1")
        ur.saveAndFlush(followed1)
        s.assertThat(followed1.following).hasSize(0)
        s.assertThat(followed1.followers).hasSize(0)

        // 1-1 follower1がfollowed1をフォロー
        follower1.following.add(followed1)
        println(">> 1-1 follower1 follow followed1")
        ur.saveAndFlush(follower1)
        println(">> 1-1 refresh follower1")
        em.refresh(follower1)
        s.assertThat(follower1.following).hasSize(1)
        s.assertThat(follower1.followers).hasSize(0)

        // 1-2 followed1がfollower1のフォロワーになっているはず
        println(">> 1-2 refresh followed1")
        em.refresh(followed1)
        s.assertThat(followed1.following).hasSize(0)
        s.assertThat(followed1.followers).hasSize(1)

        // 2-1 follower1がfollowed1をフォロー解除
        follower1.following.remove(followed1)
        println(">> 2-1 follower1 un-follow followed1")
        ur.saveAndFlush(follower1)
        s.assertThat(follower1.following).hasSize(0)
        s.assertThat(follower1.followers).hasSize(0)

        // 2-2 followed1のフォロワーからfollower1がいなくなっているはず
        println(">> 2-2 refresh followed1")
        em.refresh(followed1)
        s.assertThat(followed1.following).hasSize(0)
        s.assertThat(followed1.followers).hasSize(0)

        // 3-1 follower1がfollowed1を再フォロー出来る
        follower1.following.add(followed1)
        println(">> 3-1 follower1 re-follow followed1")
        ur.saveAndFlush(follower1)
        s.assertThat(follower1.following).hasSize(1)
        s.assertThat(follower1.followers).hasSize(0)

        // 3-2 followed1がfollower1のフォロワーになっているはず
        println(">> 3-2 refresh followed1")
        em.refresh(followed1)
        s.assertThat(followed1.following).hasSize(0)
        s.assertThat(followed1.followers).hasSize(1)

        // 4-1 follower1が削除されたらリレーションが消滅する
        println(">> 4-1 delete follower1")
        ur.delete(follower1)
        println(">> 4-1 em flush")
        em.flush()

        // 4-2 followed1のフォロワーからfollower1がいなくなっているはず
        println(">> 4-2 refresh followed1")
        em.refresh(followed1)
        s.assertThat(followed1.following).hasSize(0)
        s.assertThat(followed1.followers).hasSize(0)

        // 5-0 follower2登録 & followed1をフォロー
        val follower2 = User("follower2", "follower2@example.com").apply { passwordDigest = pe.encode("password") }
        println(">> 5-0 save follower2"); follower2.following.add(followed1); ur.saveAndFlush(follower2)
        s.assertThat(follower2.following).hasSize(1)
        s.assertThat(follower2.followers).hasSize(0)
        println(">> 5-0 refresh followed1")
        em.refresh(followed1)
        s.assertThat(followed1.following).hasSize(0)
        s.assertThat(followed1.followers).hasSize(1)

        // 5-1 followed1が削除されたらリレーションが消滅する
        println(">> 5-1 delete followed1")
        ur.delete(followed1)
        println(">> 5-1 em flush")
        em.flush()

        // 5-2 follower2のフォローからfollowed1がいなくなっているはず
        println(">> 5-2 refresh follower1")
        em.refresh(follower2)
        s.assertThat(follower2.following).hasSize(0)
        s.assertThat(follower2.followers).hasSize(0)

        // 6-0 followed2登録
        val followed2 = User("followed2", "followed2@example.com").apply { passwordDigest = pe.encode("password") }
        println(">> 6-0 save followed2"); ur.saveAndFlush(followed2)

        // 6-1 follower2とfollowed2が相互フォローする
        follower2.following.add(followed2)
        println(">> 6-1 save follower2")
        ur.saveAndFlush(follower2)
        followed2.following.add(follower2)
        println(">> 6-1 save followed2")
        ur.saveAndFlush(followed2)
        println(">> 6-1 refresh follower2")
        em.refresh(follower2)
        println(">> 6-1 refresh followed2")
        em.refresh(followed2)
        s.assertThat(follower2.following).hasSize(1)
        s.assertThat(follower2.followers).hasSize(1)
        s.assertThat(followed2.following).hasSize(1)
        s.assertThat(followed2.followers).hasSize(1)

        // 6-2 follower2が削除されたらfollowed2のフォロー、フォロワーからfollower2がいなくなっているはず
        println(">> 6-2 delete follower2")
        ur.delete(follower2)
        println(">> 6-2 em flush")
        em.flush()
        println(">> 6-2 refresh followed2")
        em.refresh(followed2)
        s.assertThat(followed2.following).hasSize(0)
        s.assertThat(followed2.followers).hasSize(0)


        // 99-1 2重フォローはできない
        val follower99 = User("follower99", "follower99@example.com").apply { passwordDigest = pe.encode("password") }
        val followed99 = User("followed99", "followed99@example.com").apply { passwordDigest = pe.encode("password") }
        println(">> 99-1 save follower99 & followed99")
        ur.saveAndFlush(follower99); ur.saveAndFlush(followed99)
        s.assertThatThrownBy {
            println(">> 99-1 follower99 follow followed99 2times")
            follower99.following.add(followed99)
            follower99.following.add(followed99)
            ur.saveAndFlush(follower99)
        }.isInstanceOf(DataIntegrityViolationException::class.java)


        s.assertAll()
    }
}
