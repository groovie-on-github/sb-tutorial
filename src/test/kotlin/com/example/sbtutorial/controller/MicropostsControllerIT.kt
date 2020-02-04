package com.example.sbtutorial.controller

import com.example.sbtutorial.TestDataSupplier
import com.example.sbtutorial.domain.micropost.MicropostsService
import com.example.sbtutorial.domain.user.UsersService
import org.assertj.core.api.Assertions.*
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
class MicropostsControllerIT
        @Autowired constructor(
            private val mvc: MockMvc,
            private val ms: MicropostsService,
            us: UsersService
        ): TestDataSupplier(usersRepository = us.repository,
                            micropostsRepository = ms.repository) {


    private val invalidContents = listOf("", " ", "　", "a".repeat(141))

    @Test
    fun `microposts(GET)アクセス - マイクロポスト一覧表示`() {
        val message1 = "test message1"
        val message2 = "test message2"

        val result = mvc.perform(
                get("/microposts")
                    .flashAttr("messages", listOf(message1, message2))
                )
                .andExpect(status().isOk)
                .andReturn()

        val content = result.response.contentAsString
        assertThat(content)
                .contains("<title>Listing microposts</title>")
                .contains("<h1>Listing microposts</h1>")
                .contains("<td>${micropost11.content}</td>").contains("<td>${micropost11.user?.id}</td>")
                .contains("<td>${micropost12.content}</td>").contains("<td>${micropost12.user?.id}</td>")
                .contains("<td>${micropost21.content}</td>").contains("<td>${micropost21.user?.id}</td>")
                .contains("href=\"microposts/${micropost11.id}\"")
                .contains("href=\"microposts/${micropost12.id}\"")
                .contains("href=\"microposts/${micropost21.id}\"")
                .contains("<li>${message1}</li>").contains("<li>${message2}</li>")
    }

    @Test
    fun `microposts#{id}(GET)アクセス - マイクロポスト表示`() {
        val result = mvc.perform(get("/microposts/${micropost11.id}"))
                .andExpect(status().isOk)
                .andReturn()

        val content = result.response.contentAsString
        assertThat(content)
                .contains("<title>Show micropost</title>")
                .contains("<h1>Show micropost</h1>")
                .contains(micropost11.content).contains(micropost11.user?.id.toString())
    }

    @Test
    fun `microposts#{id}(GET)アクセス - マイクロポスト表示 - 存在しないマイクロポストID`() {
        assertThatThrownBy {
            mvc.perform(get("/microposts/${UUID.randomUUID()}"))
        }.isNotNull()//TODO("適切な実装が必要")
    }

    @Test
    fun `microposts#{id}(GET)アクセス - マイクロポスト表示 - 無効なマイクロポストID`() {
        mvc.perform(get("/microposts/invalid-id"))
                .andExpect(status().is4xxClientError)//TODO("適切な実装が必要")
    }

    @Test
    fun `microposts#new(GET)アクセス - マイクロポスト作成画面表示`() {
        val result = mvc.perform(get("/microposts/new"))
                .andExpect(status().isOk)
                .andReturn()

        val content = result.response.contentAsString
        assertThat(content)
                .contains("<title>Create micropost</title>")
                .contains("<h1>Create micropost</h1>")
                .contains("action=\"/microposts\"")
                .contains("method=\"post\"")
    }

    @Test
    fun `microposts#{id}#edit(GET)アクセス - マイクロポスト編集画面表示`() {
        val result = mvc.perform(get("/microposts/${micropost11.id}/edit"))
                .andExpect(status().isOk)
                .andReturn()

        val content = result.response.contentAsString
        assertThat(content)
                .contains("<title>Edit micropost</title>")
                .contains("<h1>Edit micropost</h1>")
                .contains("action=\"/microposts/${micropost11.id}\"")
                .contains("method=\"post\"")
                .contains("value=\"${micropost11.content}\"")
                .contains("value=\"${micropost11.user?.id}\"")
    }

    @Test
    fun `microposts#{id}#edit(GET)アクセス - マイクロポスト編集画面表示 - 存在しないマイクロポストID`() {
        assertThatThrownBy {
            mvc.perform(get("/microposts/${UUID.randomUUID()}/edit"))
        }.isNotNull()//TODO("適切な実装が必要")
    }

    @Test
    fun `microposts#{id}#edit(GET)アクセス - マイクロポスト編集画面表示 - 無効なマイクロポストID`() {
        mvc.perform(get("/microposts/invalid-id/edit"))
                .andExpect(status().is4xxClientError)//TODO("適切な実装が必要")
    }

    @Test
    fun `microposts(POST)アクセス - マイクロポスト作成`() {
        val paramContent = "a".repeat(140)

        var micropost = ms.getAllMicroposts().find { it.content == paramContent }
        assertThat(micropost).isNull()

        val result = mvc.perform(
                post("/microposts")
                    .param("content", paramContent)
                    .param("user.id", user1.id.toString())
                    .with(SecurityMockMvcRequestPostProcessors.csrf())
                )
                .andExpect(status().is3xxRedirection)
                .andExpect(redirectedUrl("/microposts"))
                .andReturn()

        assertThat(result.flashMap.toMap()).containsKey("messages").hasEntrySatisfying("messages") {
            assertThat(it as List<String>).contains("micropost has been created by ${user1.name}!!")
        }

        micropost = ms.getAllMicroposts().find { it.content == paramContent }
        assertThat(micropost).isNotNull
                .hasFieldOrPropertyWithValue("content", paramContent)
                .hasFieldOrPropertyWithValue("user.id", user1.id)
    }

    @Test
    fun `microposts(POST)アクセス - マイクロポスト作成 - 無効なコンテンツ`() {
        invalidContents.forEach { paramContent ->
            var micropost = ms.getAllMicroposts().find { it.content == paramContent }
            assertThat(micropost).isNull()

            val result = mvc.perform(
                    post("/microposts")
                        .param("content", paramContent)
                        .param("user.id", user1.id.toString())
                        .with(SecurityMockMvcRequestPostProcessors.csrf())
                    )
                    .andExpect(status().isOk)
                    .andReturn()

            val content = result.response.contentAsString
            assertThat(content)
                    .contains("<title>Create micropost</title>")
                    .contains("<h1>Create micropost</h1>")
                    .contains("action=\"/microposts\"")
                    .contains("method=\"post\"")
                    .contains("class=\"invalid-feedback\"")

            micropost = ms.getAllMicroposts().find { it.content == paramContent }
            assertThat(micropost).isNull()
        }
    }

    @Test
    fun `microposts(POST)アクセス - マイクロポスト作成 - 無効なユーザーID`() {
        val paramContent = "test micropost1-3"

        var micropost = ms.getAllMicroposts().find { it.content == paramContent }
        assertThat(micropost).isNull()

        mvc.perform(
            post("/microposts")
                .param("content", paramContent)
                .param("user.id", "invalid-user.id")
                .with(SecurityMockMvcRequestPostProcessors.csrf())
            )
            .andExpect(status().isBadRequest)//TODO("適切な実装が必要")

        micropost = ms.getAllMicroposts().find { it.content == paramContent }
        assertThat(micropost).isNull()
    }

    @Test
    fun `microposts#{id}(POST)アクセス - マイクロポスト更新`() {
        val paramContent = "test micropost1-1(update)"

        var micropost = ms.getAllMicroposts().find { it.content == paramContent }
        assertThat(micropost).isNull()

        assertThat(micropost11.updatedAt).isEqualTo(micropost11.createdAt)
println(">>> user1.id=${user1.id}")
        val result = mvc.perform(
                post("/microposts/${micropost11.id}")
                    .param("content", paramContent)
                    .param("user.id", user1.id.toString())
                    .with(SecurityMockMvcRequestPostProcessors.csrf())
                )
                .andExpect(status().is3xxRedirection)
                .andExpect(redirectedUrl("/microposts/${micropost11.id}"))
                .andReturn()

        assertThat(result.flashMap.toMap()).containsKey("messages").hasEntrySatisfying("messages") {
            assertThat(it as List<String>).contains("micropost has been updated by ${user1.name}!!")
        }

        micropost = ms.getAllMicroposts().find { it.content == paramContent }
        assertThat(micropost)
                .hasFieldOrPropertyWithValue("content", paramContent)
                .hasFieldOrPropertyWithValue("user.id", user1.id)

        assertThat(micropost11.updatedAt).isNotEqualTo(micropost11.createdAt)
    }

    @Test
    fun `microposts#{id}(POST)アクセス - マイクロポスト更新 - 無効なコンテンツ`() {
        invalidContents.forEach { paramContent ->
            assertThat(micropost11.updatedAt).isEqualTo(micropost11.createdAt)

            val result = mvc.perform(
                    post("/microposts/${micropost11.id}")
                        .param("content", paramContent)
                        .param("user.id", user1.id.toString())
                        .with(SecurityMockMvcRequestPostProcessors.csrf())
                    )
                    .andExpect(status().isOk)
                    .andReturn()

            val content = result.response.contentAsString
            assertThat(content)
                    .contains("<title>Edit micropost</title>")
                    .contains("<h1>Edit micropost</h1>")
                    .contains("action=\"/microposts/${micropost11.id}\"")
                    .contains("method=\"post\"")
                    .contains("class=\"invalid-feedback\"")

            assertThat(micropost11.updatedAt).isEqualTo(micropost11.createdAt)
        }
    }

    @Test
    fun `microposts#{id}(POST)アクセス - マイクロポスト更新 - 無効なユーザーID`() {
        val paramContent = "test micropost1-1(update)"

        assertThat(micropost11.updatedAt).isEqualTo(micropost11.createdAt)

        mvc.perform(
            post("/microposts/${micropost11.id}")
                .param("content", paramContent)
                .param("user.id", "invalid-user.id")
                .with(SecurityMockMvcRequestPostProcessors.csrf())
            )
            .andExpect(status().isBadRequest)//TODO("適切な実装が必要")

        assertThat(micropost11.updatedAt).isEqualTo(micropost11.createdAt)
    }

    @Test
    fun `microposts#{id}#delete(GET)アクセス - マイクロポスト削除画面表示`() {
        val result = mvc.perform(get("/microposts/${micropost11.id}/delete"))
                .andExpect(status().isOk)
                .andReturn()

        val content = result.response.contentAsString
        assertThat(content)
                .contains("<title>Delete micropost</title>")
                .contains("<h1>Delete micropost</h1>")
                .contains("action=\"/microposts/${micropost11.id}/delete\"")
                .contains("method=\"post\"")
                .contains(micropost11.content).contains(micropost11.user?.id.toString())
                .contains("<strong>Are you sure you want to delete?</strong>")
    }

    @Test
    fun `microposts#{id}#delete(GET)アクセス - マイクロポスト削除画面表示 - 存在しないマイクロポストID`() {
        assertThatThrownBy {
            mvc.perform(get("/microposts/${UUID.randomUUID()}/delete"))
        }.isNotNull()//TODO("適切な実装が必要")
    }

    @Test
    fun `microposts#{id}#delete(GET)アクセス - マイクロポスト削除画面表示 - 無効なマイクロポストID`() {
        mvc.perform(get("/microposts/invalid-ID/delete"))
                .andExpect(status().is4xxClientError)//TODO("適切な実装が必要")
    }

    @Test
    fun `microposts#{id}#delete(POST)アクセス - マイクロポスト削除`() {
        var micropost = ms.getMicropostById(micropost11.id!!)
        assertThat(micropost).isNotNull

        val result = mvc.perform(
                    post("/microposts/${micropost11.id}/delete")
                    .with(SecurityMockMvcRequestPostProcessors.csrf())
                )
                .andExpect(status().is3xxRedirection)
                .andExpect(redirectedUrl("/microposts"))
                .andReturn()

        assertThat(result.flashMap.toMap()).containsKey("messages").hasEntrySatisfying("messages") {
            assertThat(it as List<String>).contains("micropost has been deleted by ${user1.name}!!")
        }

        micropost = ms.getMicropostById(micropost11.id!!)
        assertThat(micropost).isNull()
    }

    @Test
    fun `microposts#{id}#delete(POST)アクセス - マイクロポスト削除 - 存在しないマイクロポストID`() {
        assertThatThrownBy {
            mvc.perform(
                        post("/microposts/${UUID.randomUUID()}/delete")
                        .with(SecurityMockMvcRequestPostProcessors.csrf())
                    )
        }.isNotNull()//TODO("適切な実装が必要")
    }

    @Test
    fun `microposts#{id}#delete(POST)アクセス - マイクロポスト削除 - 無効なマイクロポストID`() {
        mvc.perform(
                    post("/microposts/invalid-ID/delete")
                    .with(SecurityMockMvcRequestPostProcessors.csrf())
                ).andExpect(status().is4xxClientError)//TODO("適切な実装が必要")
    }
}
