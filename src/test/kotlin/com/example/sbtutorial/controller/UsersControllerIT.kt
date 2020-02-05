package com.example.sbtutorial.controller

import com.example.sbtutorial.domain.user.User
import com.example.sbtutorial.domain.user.UsersService
import org.assertj.core.api.Assertions.*
import org.junit.jupiter.api.BeforeEach
import org.junit.jupiter.api.Test
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc
import org.springframework.boot.test.context.SpringBootTest
import org.springframework.security.test.web.servlet.request.SecurityMockMvcRequestPostProcessors
import org.springframework.test.web.servlet.MockMvc
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*
import org.springframework.test.web.servlet.result.MockMvcResultMatchers.*
import org.springframework.transaction.annotation.Transactional
import java.util.*

@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
@AutoConfigureMockMvc
@Transactional
@Suppress("UNCHECKED_CAST")
class UsersControllerIT
        @Autowired constructor(
            private val mvc: MockMvc,
            private val us: UsersService) {

    private lateinit var user1: User

    private val invalidNames = listOf("", " ", "　")
    private val invalidEmails = listOf("", " ", "　", "user3.e-mail.address")

    @BeforeEach
    fun setUp() {
        user1 = us.getAllUsers().first { it.email == "user1@example.com" }
    }

    @Test
    fun `users(GET)アクセス - ユーザー一覧表示`() {
        val message1 = "test message1"
        val message2 = "test message2"

        val result = mvc.perform(
                get("/users")
                    .flashAttr("messages", listOf(message1, message2))
                )
                .andExpect(status().isOk)
                .andReturn()

        val user1a = us.getAllUsers().first { it.email == "user1.alternate@example.com" }
        val user2 = us.getAllUsers().first { it.email == "user2@example.com" }

        val content = result.response.contentAsString
        assertThat(content)
            .contains("<title>Listing users</title>")
            .contains("<h1>Listing users</h1>")
            .contains("<td>${user1.name}</td>").contains("<td>${user1.email}</td>")
            .contains("<td>${user1a.name}</td>").contains("<td>${user1a.email}</td>")
            .contains("<td>${user2.name}</td>").contains("<td>${user2.email}</td>")
            .contains("href=\"users/${user1.id}\"")
            .contains("href=\"users/${user1a.id}\"")
            .contains("href=\"users/${user2.id}\"")
            .contains("<li>${message1}</li>").contains("<li>${message2}</li>")
    }

    @Test
    fun `users#{id}(GET)アクセス - ユーザー表示`() {
        val result = mvc.perform(get("/users/${user1.id}"))
                .andExpect(status().isOk)
                .andReturn()

        val content = result.response.contentAsString
        assertThat(content)
            .contains("<title>Show user</title>")
            .contains("<h1>Show user</h1>")
            .contains(user1.name).contains(user1.email)
    }

    @Test
    fun `users#{id}(GET)アクセス - ユーザー表示 - 存在しないユーザーID`() {
        assertThatThrownBy {
            mvc.perform(get("/users/${UUID.randomUUID()}"))
        }.isNotNull()//TODO("適切な実装が必要")
    }

    @Test
    fun `users#{id}(GET)アクセス - ユーザー表示 - 無効なユーザーID`() {
        mvc.perform(get("/users/invalid-ID"))
                .andExpect(status().is4xxClientError)//TODO("適切な実装が必要")
    }

    @Test
    fun `users#new(GET)アクセス - ユーザー作成画面表示`() {
        val result = mvc.perform(get("/users/new"))
                .andExpect(status().isOk)
                .andReturn()

        val content = result.response.contentAsString
        assertThat(content)
            .contains("<title>Create user</title>")
            .contains("<h1>Create user</h1>")
            .contains("action=\"/users\"")
            .contains("method=\"post\"")
    }

    @Test
    fun `users#{id}#edit(GET)アクセス - ユーザー編集画面表示`() {
        val result = mvc.perform(get("/users/${user1.id}/edit"))
                .andExpect(status().isOk)
                .andReturn()

        val content = result.response.contentAsString
        assertThat(content)
            .contains("<title>Edit user</title>")
            .contains("<h1>Edit user</h1>")
            .contains("action=\"/users/${user1.id}\"")
            .contains("method=\"post\"")
            .contains("value=\"${user1.name}\"").contains("value=\"${user1.email}\"")
    }

    @Test
    fun `users#{id}#edit(GET)アクセス - ユーザー編集画面表示 - 存在しないユーザーID`() {
        assertThatThrownBy {
            mvc.perform(get("/users/${UUID.randomUUID()}/edit"))
        }.isNotNull()//TODO("適切な実装が必要")
    }

    @Test
    fun `users#{id}#edit(GET)アクセス - ユーザー編集画面表示 - 無効なユーザーID`() {
        mvc.perform(get("/users/invalid-ID/edit"))
                .andExpect(status().is4xxClientError)//TODO("適切な実装が必要")
    }

    @Test
    fun `users(POST)アクセス - ユーザー作成`() {
        val name = "test user3"
        val email = "user3@example.com"

        var user = us.getAllUsers().find { it.email == email }
        assertThat(user).isNull()

        val result = mvc.perform(
                post("/users")
                    .param("name", name)
                    .param("email", email)
                    .with(SecurityMockMvcRequestPostProcessors.csrf())
                )
                .andExpect(status().is3xxRedirection)
                .andExpect(redirectedUrl("/users"))
                .andReturn()

        assertThat(result.flashMap.toMap()).containsKey("messages").hasEntrySatisfying("messages") {
            assertThat(it as List<String>).contains("$name has been created!!")
        }

        user = us.getAllUsers().find { it.email == email }
        assertThat(user).isNotNull
                .hasFieldOrPropertyWithValue("name", name)
                .hasFieldOrPropertyWithValue("email", email)
    }

    @Test
    fun `users(POST)アクセス - ユーザー作成 - 無効なユーザー名`() {
        val email = "user3@example.com"

        invalidNames.forEach { name ->
            var user = us.getAllUsers().find { it.email == email }
            assertThat(user).isNull()

            val result = mvc.perform(
                    post("/users")
                        .param("name", name)
                        .param("email", email)
                        .with(SecurityMockMvcRequestPostProcessors.csrf())
                    )
                    .andExpect(status().isOk)
                    .andReturn()

            val content = result.response.contentAsString
            assertThat(content)
                    .contains("<title>Create user</title>")
                    .contains("<h1>Create user</h1>")
                    .contains("action=\"/users\"")
                    .contains("method=\"post\"")
                    .contains("class=\"invalid-feedback\"")

            user = us.getAllUsers().find { it.email == email }
            assertThat(user).isNull()
        }
    }

    @Test
    fun `users(POST)アクセス - ユーザー作成 - 無効なメールアドレス`() {
        val name = "test user3"

        invalidEmails.forEach { email ->
            var user = us.getAllUsers().find { it.email == email }
            assertThat(user).isNull()

            val result = mvc.perform(
                    post("/users")
                        .param("name", name)
                        .param("email", email)
                        .with(SecurityMockMvcRequestPostProcessors.csrf())
                    )
                    .andExpect(status().isOk)
                    .andReturn()

            val content = result.response.contentAsString
            assertThat(content)
                    .contains("<title>Create user</title>")
                    .contains("<h1>Create user</h1>")
                    .contains("action=\"/users\"")
                    .contains("method=\"post\"")
                    .contains("class=\"invalid-feedback\"")

            user = us.getAllUsers().find { it.email == email }
            assertThat(user).isNull()
        }
    }

    @Test
    fun `users(POST)アクセス - ユーザー作成 - 重複メールアドレス`() {
        val name = "test user1(duplicate)"
        val email = user1.email

        var user = us.getAllUsers().find { it.email == name }
        assertThat(user).isNull()

        assertThatThrownBy {
            mvc.perform(
                post("/users")
                    .param("name", name)
                    .param("email", email)
                    .with(SecurityMockMvcRequestPostProcessors.csrf())
            ).andExpect(status().is5xxServerError)
        }.isNotNull()//TODO("適切な実装が必要")
    }

    @Test
    fun `users#{id}(POST)アクセス - ユーザー更新`() {
        val name = "test user1(update)"
        val email = "user1_update@example.com"

        var user = us.getAllUsers().find { it.email == email }
        assertThat(user).isNull()

        assertThat(user1.updatedAt).isEqualTo(user1.createdAt)

        val result = mvc.perform(
                post("/users/${user1.id}")
                    .param("name", name)
                    .param("email", email)
                    .with(SecurityMockMvcRequestPostProcessors.csrf())
                )
                .andExpect(status().is3xxRedirection)
                .andExpect(redirectedUrl("/users/${user1.id}"))
                .andReturn()

        result.response

        assertThat(result.flashMap.toMap()).containsKey("messages").hasEntrySatisfying("messages") {
            assertThat(it as List<String>).contains("$name has been updated!!")
        }

        user = us.getAllUsers().find { it.email == email }
        assertThat(user)
                .hasFieldOrPropertyWithValue("name", name)
                .hasFieldOrPropertyWithValue("email", email)

        assertThat(user1.updatedAt).isNotEqualTo(user1.createdAt)
    }

    @Test
    fun `users#{id}(POST)アクセス - ユーザー更新 - 無効なユーザー名`() {
        val email = "user1_update@example.com"

        invalidNames.forEach { name ->
            assertThat(user1.updatedAt).isEqualTo(user1.createdAt)

            val result = mvc.perform(
                    post("/users/${user1.id}")
                        .param("name", name)
                        .param("email", email)
                        .with(SecurityMockMvcRequestPostProcessors.csrf())
                    )
                    .andExpect(status().isOk)
                    .andReturn()

            val content = result.response.contentAsString
            assertThat(content)
                    .contains("<title>Edit user</title>")
                    .contains("<h1>Edit user</h1>")
                    .contains("action=\"/users/${user1.id}\"")
                    .contains("method=\"post\"")
                    .contains("class=\"invalid-feedback\"")

            assertThat(user1.updatedAt).isEqualTo(user1.createdAt)
        }
    }

    @Test
    fun `users#{id}(POST)アクセス - ユーザー更新 - 無効なメールアドレス`() {
        val name = "test user1(update)"

        invalidEmails.forEach { email ->
            assertThat(user1.updatedAt).isEqualTo(user1.createdAt)

            val result = mvc.perform(
                    post("/users/${user1.id}")
                        .param("name", name)
                        .param("email", email)
                        .with(SecurityMockMvcRequestPostProcessors.csrf())
                    )
                    .andExpect(status().isOk)
                    .andReturn()

            val content = result.response.contentAsString
            assertThat(content)
                    .contains("<title>Edit user</title>")
                    .contains("<h1>Edit user</h1>")
                    .contains("action=\"/users/${user1.id}\"")
                    .contains("method=\"post\"")
                    .contains("class=\"invalid-feedback\"")

            assertThat(user1.updatedAt).isEqualTo(user1.createdAt)
        }
    }

    @Test
    fun `users#{id}(POST)アクセス - ユーザー更新 - 重複メールアドレス`() {
        val name = "test user1(duplicate email)"
        val email = "user1@example.com"

        var user = us.getAllUsers().find { it.email == name }
        assertThat(user).isNull()

        assertThatThrownBy {
            mvc.perform(
                post("/users/${user1.id}")
                    .param("name", name)
                    .param("email", email)
                    .with(SecurityMockMvcRequestPostProcessors.csrf())
                ).andExpect(status().is5xxServerError)
        }.isNotNull()//TODO("適切な実装が必要")
    }

    @Test
    fun `users#{id}#delete(GET)アクセス - ユーザー削除画面表示`() {
        val result = mvc.perform(get("/users/${user1.id}/delete"))
                .andExpect(status().isOk)
                .andReturn()

        val content = result.response.contentAsString
        assertThat(content)
                .contains("<title>Delete user</title>")
                .contains("<h1>Delete user</h1>")
                .contains("action=\"/users/${user1.id}/delete\"")
                .contains("method=\"post\"")
                .contains(user1.name).contains(user1.email)
                .contains("<strong>Are you sure you want to delete?</strong>")
    }

    @Test
    fun `users#{id}#delete(GET)アクセス - ユーザー削除画面表示 - 存在しないユーザーID`() {
        assertThatThrownBy {
            mvc.perform(get("/users/${UUID.randomUUID()}/delete"))
        }.isNotNull()//TODO("適切な実装が必要")
    }

    @Test
    fun `users#{id}#delete(GET)アクセス - ユーザー削除画面表示 - 無効なユーザーID`() {
        mvc.perform(get("/users/invalid-ID/delete"))
                .andExpect(status().is4xxClientError)//TODO("適切な実装が必要")
    }

    @Test
    fun `users#{id}#delete(POST)アクセス - ユーザー削除`() {
        var user = us.getUserById(user1.id!!)
        assertThat(user).isNotNull

        val result = mvc.perform(
                    post("/users/${user1.id}/delete")
                    .with(SecurityMockMvcRequestPostProcessors.csrf())
                )
                .andExpect(status().is3xxRedirection)
                .andExpect(redirectedUrl("/users"))
                .andReturn()

        assertThat(result.flashMap.toMap()).containsKey("messages").hasEntrySatisfying("messages") {
            assertThat(it as List<String>).contains("${user1.name} has been deleted!!")
        }

        user = us.getUserById(user1.id!!)
        assertThat(user).isNull()
    }

    @Test
    fun `users#{id}#delete(POST)アクセス - ユーザー削除 - 存在しないユーザーID`() {
        assertThatThrownBy {
            mvc.perform(post("/users/${UUID.randomUUID()}/delete")
                        .with(SecurityMockMvcRequestPostProcessors.csrf()))
        }.isNotNull()//TODO("適切な実装が必要")
    }

    @Test
    fun `users#{id}#delete(POST)アクセス - ユーザー削除 - 無効なユーザーID`() {
        mvc.perform(post("/users/invalid-ID/delete")
                    .with(SecurityMockMvcRequestPostProcessors.csrf())
        ).andExpect(status().is4xxClientError)//TODO("適切な実装が必要")
    }
}
