package com.example.sbtutorial.controller

import com.example.sbtutorial.domain.user.User
import com.example.sbtutorial.domain.user.UsersService
import com.ninjasquad.springmockk.MockkBean
import io.mockk.*
import org.assertj.core.api.Assertions.*
import org.hamcrest.Matchers.*
import org.junit.jupiter.api.BeforeEach
import org.junit.jupiter.api.Test
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest
import org.springframework.security.test.web.servlet.request.SecurityMockMvcRequestPostProcessors
import org.springframework.test.web.servlet.MockMvc
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*
import org.springframework.test.web.servlet.result.MockMvcResultHandlers.*
import org.springframework.test.web.servlet.result.MockMvcResultMatchers.*
import java.util.*

@WebMvcTest(UsersController::class)
class UsersControllerTests(@Autowired private val mvc: MockMvc) {

    @MockkBean
    private lateinit var us: UsersService

    private val id = UUID.randomUUID()

    private val invalidNames = listOf("", " ", "　")
    private val invalidEmails = listOf("", " ", "　", "invalid.email-form")


    @BeforeEach
    fun setUp() {
        every { us.getAllUsers() } returns listOf(
                User("test user1", "user1@example.com").also { it.id = id },
                User("test user2", "user2@example.com").apply { id = UUID.randomUUID() })

        val slotUUID = slot<UUID>()
        every { us.getUserById(capture(slotUUID)) } answers {
            if (slotUUID.captured == id) User("test user1", "user1@example.com").also { it.id = id }
            else null
        }

        val slotUser = slot<User>()
        every { us.save(capture(slotUser)) } answers {
            if (slotUser.captured.id == null) slotUser.captured.also { it.id = UUID.randomUUID() }
            else slotUser.captured
        }

        every { us.delete(any()) } just Runs
    }

    @Test
    fun `users(GET) - ユーザー一覧表示`() {
        mvc.perform(get("/users")).andDo(print())
                .andExpect(status().isOk)
                .andExpect(view().name("users/index"))
                .andExpect(model().attribute("title", "Listing users"))
                .andExpect(model().attribute("users", isA<List<User>>(List::class.java)))
                .andExpect(model().attribute("users", containsInAnyOrder(
                        *(us.getAllUsers().toTypedArray())
                )))

        verify(atLeast = 1) { us.getAllUsers() }
    }

    @Test
    fun `users#{id}(GET) - ユーザー表示`() {
        val user = us.getUserById(id)!!
        mvc.perform(get("/users/$id")).andDo(print())
                .andExpect(status().isOk)
                .andExpect(view().name("users/show"))
                .andExpect(model().attribute("title", "Show user"))
                .andExpect(model().attribute("user", isA<User>(User::class.java)))
                .andExpect(model().attribute("user", not(sameInstance(user))))
                .andExpect(model().attribute("user",
                        hasProperty<String>("name", `is`(user.name))))
                .andExpect(model().attribute("user",
                        hasProperty<String>("email", `is`(user.email))))

        verify(atLeast = 1) { us.getUserById(any()) }
    }

    @Test
    fun `users#{id}(GET) - ユーザー表示 - 存在しないユーザーID`() {
        assertThatThrownBy {
            //TODO("適切なエラー処理が必要")
            mvc.perform(get("/users/${UUID.randomUUID()}")).andDo(print())

        }.hasCauseInstanceOf(IllegalArgumentException::class.java)
    }

    @Test
    fun `users#{id}(GET) - ユーザー表示 - 無効なユーザーID`() {
        //TODO("適切なエラー処理が必要")
        mvc.perform(get("/users/invalid-id")).andDo(print())
                .andExpect(status().isBadRequest)
    }

    @Test
    fun `users#new(GET) - ユーザー作成画面表示`() {
        mvc.perform(get("/users/new")).andDo(print())
                .andExpect(status().isOk)
                .andExpect(view().name("users/new"))
                .andExpect(model().attribute("title", "Create user"))
                .andExpect(model().attribute("user", isA<User>(User::class.java)))
                .andExpect(model().attribute("user",
                        hasProperty<String>("name", `is`(""))))
                .andExpect(model().attribute("user",
                        hasProperty<String>("email", `is`(""))))
    }

    @Test
    fun `users#{id}#edit(GET) - ユーザー編集画面表示`() {
        val user = us.getUserById(id)!!
        mvc.perform(get("/users/$id/edit")).andDo(print())
                .andExpect(status().isOk)
                .andExpect(view().name("users/edit"))
                .andExpect(model().attribute("title", "Edit user"))
                .andExpect(model().attribute("user", isA<User>(User::class.java)))
                .andExpect(model().attribute("user", not(sameInstance(user))))
                .andExpect(model().attribute("user",
                        hasProperty<String>("name", `is`(user.name))))
                .andExpect(model().attribute("user",
                        hasProperty<String>("email", `is`(user.email))))

        verify(atLeast = 1) { us.getUserById(any()) }
    }

    @Test
    fun `users#{id}#edit(GET) - ユーザー編集画面表示 - 存在しないユーザーID`() {
        assertThatThrownBy {
            //TODO("適切なエラー処理が必要")
            mvc.perform(get("/users/${UUID.randomUUID()}/edit")).andDo(print())

        }.hasCauseInstanceOf(IllegalArgumentException::class.java)
    }

    @Test
    fun `users#{id}#edit(GET) - ユーザー編集画面表示 - 無効なユーザーID`() {
        //TODO("適切なエラー処理が必要")
        mvc.perform(get("/users/invalid-id/edit")).andDo(print())
                .andExpect(status().isBadRequest)
    }

    @Test
    fun `users(POST) - ユーザー作成実行`() {
        val name = "test user3"
        val email = "user3@example.com"

        mvc.perform(post("/users")
                .param("name", name)
                .param("email", email)
                .with(SecurityMockMvcRequestPostProcessors.csrf())).andDo(print())
                .andExpect(status().is3xxRedirection)
                .andExpect(view().name("redirect:/users"))
                .andExpect(redirectedUrl("/users"))
                .andExpect(flash().attribute("messages", isA<List<String>>(List::class.java)))
                .andExpect(flash().attribute("messages", contains("$name has been created!!")))

        verify(atLeast = 1) { us.save(any()) }
    }

    @Test
    fun `users(POST) - ユーザー作成実行 - 無効なユーザー名`() {
        val email = "user3@example.com"

        invalidNames.forEach { name ->
            mvc.perform(post("/users")
                    .param("name", name)
                    .param("email", email)
                    .with(SecurityMockMvcRequestPostProcessors.csrf())).andDo(print())
                    .andExpect(status().isOk)
                    .andExpect(view().name("users/new"))
                    .andExpect(model().attribute("title", "Create user"))
                    .andExpect(model().attributeHasFieldErrorCode("user", "name",
                            `is`("NotBlank")))
        }
    }

    @Test
    fun `users(POST) - ユーザー作成実行 - 無効なメールアドレス`() {
        val name = "test user3"

        invalidEmails.forEach { email ->
            mvc.perform(post("/users")
                    .param("name", name)
                    .param("email", email)
                    .with(SecurityMockMvcRequestPostProcessors.csrf())).andDo(print())
                    .andExpect(status().isOk)
                    .andExpect(view().name("users/new"))
                    .andExpect(model().attribute("title", "Create user"))
                    .andExpect(model().attributeHasFieldErrorCode("user", "email",
                            anyOf(`is`("NotBlank"), `is`("Email"))))
        }
    }

    @Test
    fun `users#{id}(POST) - ユーザー更新実行`() {
        val name = "test user1(update)"
        val email = "user1.update@example.com"

        mvc.perform(post("/users/$id")
                .param("name", name)
                .param("email", email)
                .with(SecurityMockMvcRequestPostProcessors.csrf())).andDo(print())
                .andExpect(status().is3xxRedirection)
                .andExpect(view().name("redirect:/users/$id"))
                .andExpect(redirectedUrl("/users/$id"))
                .andExpect(flash().attribute("messages", isA<List<String>>(List::class.java)))
                .andExpect(flash().attribute("messages", contains("$name has been updated!!")))

        verify(atLeast = 1) { us.getUserById(id) }
        verify(atLeast = 1) { us.save(any()) }
    }

    @Test
    fun `users#{id}(POST) - ユーザー更新実行 - 存在しないユーザーID`() {
        val name = "invalid user(update)"
        val email = "invalid.user.update@example.com"

        assertThatThrownBy {
            //TODO("適切なエラー処理が必要")
            mvc.perform(post("/users/${UUID.randomUUID()}")
                    .param("name", name)
                    .param("email", email)
                    .with(SecurityMockMvcRequestPostProcessors.csrf())).andDo(print())

        }.hasCauseInstanceOf(IllegalArgumentException::class.java)
    }

    @Test
    fun `users#{id}(POST) - ユーザー更新実行 - 無効なユーザーID`() {
        val name = "invalid user(update)"
        val email = "invalid.user.update@example.com"

        //TODO("適切なエラー処理が必要")
        mvc.perform(post("/users/invalid-id")
                .param("name", name)
                .param("email", email)
                .with(SecurityMockMvcRequestPostProcessors.csrf())).andDo(print())
                .andExpect(status().isBadRequest)
    }

    @Test
    fun `users#{id}(POST) - ユーザー更新実行 - 無効なユーザー名`() {
        val email = "user1.update@example.com"

        invalidNames.forEach { name ->
            mvc.perform(post("/users/$id")
                    .param("name", name)
                    .param("email", email)
                    .with(SecurityMockMvcRequestPostProcessors.csrf())).andDo(print())
                    .andExpect(status().isOk)
                    .andExpect(view().name("users/edit"))
                    .andExpect(model().attribute("title", "Edit user"))
                    .andExpect(model().attributeHasFieldErrorCode("user", "name",
                            `is`("NotBlank")))
        }
    }

    @Test
    fun `users#{id}(POST) - ユーザー更新実行 - 無効なメールアドレス`() {
        val name = "test user1(update)"

        invalidEmails.forEach { email ->
            mvc.perform(post("/users/$id")
                    .param("name", name)
                    .param("email", email)
                    .with(SecurityMockMvcRequestPostProcessors.csrf())).andDo(print())
                    .andExpect(status().isOk)
                    .andExpect(view().name("users/edit"))
                    .andExpect(model().attribute("title", "Edit user"))
                    .andExpect(model().attributeHasFieldErrorCode("user", "email",
                            anyOf(`is`("NotBlank"), `is`("Email"))))
        }
    }

    @Test
    fun `users#{id}#delete(GET) - ユーザー削除画面表示`() {
        val user = us.getUserById(id)!!
        mvc.perform(get("/users/$id/delete")).andDo(print())
                .andExpect(status().isOk)
                .andExpect(view().name("users/delete"))
                .andExpect(model().attribute("title", "Delete user"))
                .andExpect(model().attribute("user", isA<User>(User::class.java)))
                .andExpect(model().attribute("user", not(sameInstance(user))))
                .andExpect(model().attribute("user",
                        hasProperty<String>("name", `is`(user.name))))
                .andExpect(model().attribute("user",
                        hasProperty<String>("email", `is`(user.email))))

        verify(atLeast = 1) { us.getUserById(any()) }
    }

    @Test
    fun `users#{id}#delete(GET) - ユーザー削除画面表示 - 存在しないユーザーID`() {
        assertThatThrownBy {
            //TODO("適切なエラー処理が必要")
            mvc.perform(get("/users/${UUID.randomUUID()}/delete")).andDo(print())

        }.hasCauseInstanceOf(IllegalArgumentException::class.java)
    }

    @Test
    fun `users#{id}#delete(GET) - ユーザー削除画面表示 - 無効なユーザーID`() {
        //TODO("適切なエラー処理が必要")
        mvc.perform(get("/users/invalid-id/delete")).andDo(print())
                .andExpect(status().isBadRequest)
    }

    @Test
    fun `users#{id}#delete(POST) - ユーザー削除実行`() {
        val user = us.getUserById(id)!!
        mvc.perform(post("/users/$id/delete")
                .with(SecurityMockMvcRequestPostProcessors.csrf())).andDo(print())
                .andExpect(status().is3xxRedirection)
                .andExpect(view().name("redirect:/users"))
                .andExpect(redirectedUrl("/users"))
                .andExpect(flash().attribute("messages", isA<List<String>>(List::class.java)))
                .andExpect(flash().attribute("messages", contains("${user.name} has been deleted!!")))

        verify(atLeast = 1) { us.getUserById(id) }
        verify(atLeast = 1) { us.delete(any()) }
    }

    @Test
    fun `users#{id}#delete(POST) - ユーザー削除実行 - 存在しないユーザーID`() {
        assertThatThrownBy {
            //TODO("適切なエラー処理が必要")
            mvc.perform(post("/users/${UUID.randomUUID()}/delete")
                    .with(SecurityMockMvcRequestPostProcessors.csrf())).andDo(print())

        }.hasCauseInstanceOf(IllegalArgumentException::class.java)
    }

    @Test
    fun `users#{id}#delete(POST) - ユーザー削除実行 - 無効なユーザーID`() {
        //TODO("適切なエラー処理が必要")
        mvc.perform(post("/users/invalid-id/delete")
                .with(SecurityMockMvcRequestPostProcessors.csrf())).andDo(print())
                .andExpect(status().isBadRequest)
    }
}
