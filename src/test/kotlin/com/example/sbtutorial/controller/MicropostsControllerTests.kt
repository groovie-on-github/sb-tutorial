package com.example.sbtutorial.controller

import com.example.sbtutorial.domain.micropost.Micropost
import com.example.sbtutorial.domain.micropost.MicropostsService
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

@WebMvcTest(MicropostsController::class)
class MicropostsControllerTests(@Autowired private val mvc: MockMvc) {

    @MockkBean
    private lateinit var ms: MicropostsService

    private val id1 = UUID.randomUUID()
    private val userId1 = UUID.randomUUID()

    private val invalidContents = listOf("", " ", "　", "a".repeat(141))


    @BeforeEach
    fun setUp() {
        every { ms.getAllMicroposts() } returns listOf(
                Micropost("test micropost1-1", userId1).also { it.id = id1 },
                Micropost("test micropost1-2", userId1).apply { id = UUID.randomUUID() },
                Micropost("test micropost2-1", UUID.randomUUID()).apply { id = UUID.randomUUID() })

        val slotUUID = slot<UUID>()
        every { ms.getMicropostById(capture(slotUUID)) } answers {
            if (slotUUID.captured == id1) Micropost("test micropost1-1", userId1).also { it.id = id1 }
            else null
        }

        val slotMicropost = slot<Micropost>()
        every { ms.save(capture(slotMicropost)) } answers {
            if (slotMicropost.captured.id == null) slotMicropost.captured.also { it.id = UUID.randomUUID() }
            else slotMicropost.captured
        }

        every { ms.delete(any()) } just Runs
    }

    @Test
    fun `microposts(GET) - マイクロポスト一覧表示`() {
        mvc.perform(get("/microposts")).andDo(print())
                .andExpect(status().isOk)
                .andExpect(view().name("microposts/index"))
                .andExpect(model().attribute("title", "Listing microposts"))
                .andExpect(model().attribute("microposts", isA<List<Micropost>>(List::class.java)))
                .andExpect(model().attribute("microposts", containsInAnyOrder(
                        *(ms.getAllMicroposts().toTypedArray())
                )))

        verify(atLeast = 1) { ms.getAllMicroposts() }
    }

    @Test
    fun `microposts#{id}(GET) - マイクロポスト表示`() {
        val micropost = ms.getMicropostById(id1)!!
        mvc.perform(get("/microposts/$id1")).andDo(print())
                .andExpect(status().isOk)
                .andExpect(view().name("microposts/show"))
                .andExpect(model().attribute("title", "Show micropost"))
                .andExpect(model().attribute("micropost", isA<Micropost>(Micropost::class.java)))
                .andExpect(model().attribute("micropost", not(sameInstance(micropost))))
                .andExpect(model().attribute("micropost",
                        hasProperty<String>("content", `is`(micropost.content))))
                .andExpect(model().attribute("micropost",
                        hasProperty<String>("userId", `is`(micropost.userId))))

        verify(atLeast = 1) { ms.getMicropostById(any()) }
    }

    @Test
    fun `microposts#{id}(GET) - マイクロポスト表示 - 存在しないマイクロポストID`() {
        assertThatThrownBy {
            //TODO("適切なエラー処理が必要")
            mvc.perform(get("/microposts/${UUID.randomUUID()}")).andDo(print())

        }.hasCauseInstanceOf(IllegalArgumentException::class.java)
    }

    @Test
    fun `microposts#{id}(GET) - マイクロポスト表示 - 無効なマイクロポストID`() {
        //TODO("適切なエラー処理が必要")
        mvc.perform(get("/microposts/invalid-id")).andDo(print())
                .andExpect(status().isBadRequest)
    }

    @Test
    fun `microposts#new(GET) - マイクロポスト作成画面表示`() {
        mvc.perform(get("/microposts/new")).andDo(print())
                .andExpect(status().isOk)
                .andExpect(view().name("microposts/new"))
                .andExpect(model().attribute("title", "Create micropost"))
                .andExpect(model().attribute("micropost", isA<Micropost>(Micropost::class.java)))
                .andExpect(model().attribute("micropost",
                        hasProperty<String>("content", `is`(""))))
                .andExpect(model().attribute("micropost",
                        hasProperty<String>("userId", nullValue())))
    }

    @Test
    fun `microposts#{id}#edit(GET) - マイクロポスト編集画面表示`() {
        val micropost = ms.getMicropostById(id1)!!
        mvc.perform(get("/microposts/$id1/edit")).andDo(print())
                .andExpect(status().isOk)
                .andExpect(view().name("microposts/edit"))
                .andExpect(model().attribute("title", "Edit micropost"))
                .andExpect(model().attribute("micropost", isA<Micropost>(Micropost::class.java)))
                .andExpect(model().attribute("micropost", not(sameInstance(micropost))))
                .andExpect(model().attribute("micropost",
                        hasProperty<String>("content", `is`(micropost.content))))
                .andExpect(model().attribute("micropost",
                        hasProperty<String>("userId", `is`(micropost.userId))))

        verify(atLeast = 1) { ms.getMicropostById(any()) }
    }

    @Test
    fun `microposts#{id}#edit(GET) - マイクロポスト編集画面表示 - 存在しないマイクロポストID`() {
        assertThatThrownBy {
            //TODO("適切なエラー処理が必要")
            mvc.perform(get("/microposts/${UUID.randomUUID()}/edit")).andDo(print())

        }.hasCauseInstanceOf(IllegalArgumentException::class.java)
    }

    @Test
    fun `microposts#{id}#edit(GET) - マイクロポスト編集画面表示 - 無効なマイクロポストID`() {
        //TODO("適切なエラー処理が必要")
        mvc.perform(get("/microposts/invalid-id/edit")).andDo(print())
                .andExpect(status().isBadRequest)
    }

    @Test
    fun `microposts(POST) - マイクロポスト作成実行`() {
        val content = "test micropost3"
        val userId = UUID.randomUUID()

        mvc.perform(post("/microposts")
                .param("content", content)
                .param("userId", userId.toString())
                .with(SecurityMockMvcRequestPostProcessors.csrf())).andDo(print())
                .andExpect(status().is3xxRedirection)
                .andExpect(view().name("redirect:/microposts"))
                .andExpect(redirectedUrl("/microposts"))
                .andExpect(flash().attribute("messages", isA<List<String>>(List::class.java)))
                .andExpect(flash().attribute("messages",
                        contains("micropost has been created by $userId!!")))

        verify(atLeast = 1) { ms.save(any()) }
    }

    @Test
    fun `microposts(POST) - マイクロポスト作成実行 - 無効なコンテンツ`() {
        invalidContents.forEach { content ->
            mvc.perform(post("/microposts")
                    .param("content", content)
                    .param("userId", userId1.toString())
                    .with(SecurityMockMvcRequestPostProcessors.csrf())).andDo(print())
                    .andExpect(status().isOk)
                    .andExpect(view().name("microposts/new"))
                    .andExpect(model().attribute("title", "Create micropost"))
                    .andExpect(model().attributeHasFieldErrorCode("micropost", "content",
                            anyOf(`is`("NotBlank"), `is`("Size"))))
        }
    }

    @Test
    fun `microposts(POST) - マイクロポスト作成実行 - 無効なユーザーID`() {
        //TODO("適切なエラー処理が必要")
        mvc.perform(post("/microposts")
                .param("content", "test micropost3-1")
                .param("userId", "invalid-userId")
                .with(SecurityMockMvcRequestPostProcessors.csrf())).andDo(print())
                .andExpect(status().isOk)
                .andExpect(view().name("microposts/new"))
                .andExpect(model().attribute("title", "Create micropost"))
                .andExpect(model().attributeHasFieldErrorCode("micropost", "userId",
                        `is`("typeMismatch")))
    }

    @Test
    fun `microposts#{id}(POST) - マイクロポスト更新実行`() {
        val content = "test micropost1(update)"
        val userId = UUID.randomUUID()

        mvc.perform(post("/microposts/$id1")
                .param("content", content)
                .param("userId", userId.toString())
                .with(SecurityMockMvcRequestPostProcessors.csrf())).andDo(print())
                .andExpect(status().is3xxRedirection)
                .andExpect(view().name("redirect:/microposts/$id1"))
                .andExpect(redirectedUrl("/microposts/$id1"))
                .andExpect(flash().attribute("messages", isA<List<String>>(List::class.java)))
                .andExpect(flash().attribute("messages",
                        contains("micropost has been updated by $userId!!")))

        verify(atLeast = 1) { ms.getMicropostById(id1) }
        verify(atLeast = 1) { ms.save(any()) }
    }

    @Test
    fun `microposts#{id}(POST) - マイクロポスト更新実行 - 存在しないマイクロポストID`() {
        val content = "invalid micropost(update)"
        val userId = UUID.randomUUID()

        assertThatThrownBy {
            //TODO("適切なエラー処理が必要")
            mvc.perform(post("/microposts/${UUID.randomUUID()}")
                    .param("content", content)
                    .param("userId", userId.toString())
                    .with(SecurityMockMvcRequestPostProcessors.csrf())).andDo(print())

        }.hasCauseInstanceOf(IllegalArgumentException::class.java)
    }

    @Test
    fun `microposts#{id}(POST) - マイクロポスト更新実行 - 無効なマイクロポストID`() {
        val content = "invalid micropost1-1(update)"
        val userId = UUID.randomUUID()

        //TODO("適切なエラー処理が必要")
        mvc.perform(post("/microposts/invalid-id")
                .param("content", content)
                .param("userId", userId.toString())
                .with(SecurityMockMvcRequestPostProcessors.csrf())).andDo(print())
                .andExpect(status().isBadRequest)
    }

    @Test
    fun `microposts#{id}(POST) - マイクロポスト更新実行 - 無効なコンテンツ`() {
        val userId = UUID.randomUUID()

        invalidContents.forEach { content ->
            mvc.perform(post("/microposts/$id1")
                    .param("content", content)
                    .param("userId", userId.toString())
                    .with(SecurityMockMvcRequestPostProcessors.csrf())).andDo(print())
                    .andExpect(status().isOk)
                    .andExpect(view().name("microposts/edit"))
                    .andExpect(model().attribute("title", "Edit micropost"))
                    .andExpect(model().attributeHasFieldErrorCode("micropost", "content",
                            anyOf(`is`("NotBlank"), `is`("Size"))))
        }
    }

    @Test
    fun `microposts#{id}(POST) - マイクロポスト更新実行 - 無効なユーザーID`() {
        val content = "test micropost1(update)"

        //TODO("適切なエラー処理が必要")
        mvc.perform(post("/microposts/$id1")
                .param("content", content)
                .param("userId", "invalid-id")
                .with(SecurityMockMvcRequestPostProcessors.csrf())).andDo(print())
                .andExpect(status().isOk)
                .andExpect(view().name("microposts/edit"))
                .andExpect(model().attribute("title", "Edit micropost"))
                .andExpect(model().attributeHasFieldErrorCode("micropost", "userId",
                        `is`("typeMismatch")))
    }

    @Test
    fun `microposts#{id}#delete(GET) - マイクロポスト削除画面表示`() {
        val micropost = ms.getMicropostById(id1)!!
        mvc.perform(get("/microposts/$id1/delete")).andDo(print())
                .andExpect(status().isOk)
                .andExpect(view().name("microposts/delete"))
                .andExpect(model().attribute("title", "Delete micropost"))
                .andExpect(model().attribute("micropost", isA<Micropost>(Micropost::class.java)))
                .andExpect(model().attribute("micropost", not(sameInstance(micropost))))
                .andExpect(model().attribute("micropost",
                        hasProperty<String>("content", `is`(micropost.content))))
                .andExpect(model().attribute("micropost",
                        hasProperty<String>("userId", `is`(micropost.userId))))

        verify(atLeast = 1) { ms.getMicropostById(any()) }
    }

    @Test
    fun `microposts#{id}#delete(GET) - マイクロポスト削除画面表示 - 存在しないマイクロポストID`() {
        assertThatThrownBy {
            //TODO("適切なエラー処理が必要")
            mvc.perform(get("/microposts/${UUID.randomUUID()}/delete")).andDo(print())

        }.hasCauseInstanceOf(IllegalArgumentException::class.java)
    }

    @Test
    fun `microposts#{id}#delete(GET) - マイクロポスト削除画面表示 - 無効なマイクロポストID`() {
        //TODO("適切なエラー処理が必要")
        mvc.perform(get("/microposts/invalid-id/delete")).andDo(print())
                .andExpect(status().isBadRequest)
    }

    @Test
    fun `microposts#{id}#delete(POST) - マイクロポスト削除実行`() {
        mvc.perform(post("/microposts/$id1/delete")
                .with(SecurityMockMvcRequestPostProcessors.csrf())).andDo(print())
                .andExpect(status().is3xxRedirection)
                .andExpect(view().name("redirect:/microposts"))
                .andExpect(redirectedUrl("/microposts"))
                .andExpect(flash().attribute("messages", isA<List<String>>(List::class.java)))
                .andExpect(flash().attribute("messages",
                        contains("micropost has been deleted by $userId1!!")))

        verify(atLeast = 1) { ms.getMicropostById(id1) }
        verify(atLeast = 1) { ms.delete(any()) }
    }

    @Test
    fun `microposts#{id}#delete(POST) - マイクロポスト削除実行 - 存在しないマイクロポストID`() {
        assertThatThrownBy {
            //TODO("適切なエラー処理が必要")
            mvc.perform(post("/microposts/${UUID.randomUUID()}/delete")
                    .with(SecurityMockMvcRequestPostProcessors.csrf())).andDo(print())

        }.hasCauseInstanceOf(IllegalArgumentException::class.java)
    }

    @Test
    fun `microposts#{id}#delete(POST) - マイクロポスト削除実行 - 無効なマイクロポストID`() {
        //TODO("適切なエラー処理が必要")
        mvc.perform(post("/microposts/invalid-id/delete")
                .with(SecurityMockMvcRequestPostProcessors.csrf())).andDo(print())
                .andExpect(status().isBadRequest)
    }
}
