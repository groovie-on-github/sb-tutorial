package com.example.sbtutorial.domain.micropost

import com.example.sbtutorial.domain.user.User
import com.example.sbtutorial.domain.user.UsersService
import org.assertj.core.api.Assertions.*
import org.junit.jupiter.api.*
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.boot.test.context.SpringBootTest
import org.springframework.transaction.annotation.Transactional
import java.util.*

@SpringBootTest
@Transactional
class MicropostsServiceTests @Autowired constructor(
        private val ms: MicropostsService,
        private val us: UsersService) {

    @Test
    fun `全てのマイクロポストを取得できる`() {
        val microposts = ms.getAllMicroposts()
        assertThat(microposts)
            .hasSize(3)
            .extracting("content")
                .containsExactlyInAnyOrder(
                    "test micropost1-1",
                    "test micropost1-2",
                    "test micropost2-1")
    }

    @Test
    fun `ユーザーの全てのマイクロポストを取得できる`() {
        val user1 = us.getAllUsers().first { it.email == "user1@example.com" }

        var microposts = ms.getAllMicroposts(user1)
        assertThat(microposts)
            .hasSize(2)
            .extracting("content")
            .containsExactlyInAnyOrder("test micropost1-1", "test micropost1-2")

        val user2 = us.getAllUsers().first { it.email == "user2@example.com" }

        microposts = ms.getAllMicroposts(user2)
        assertThat(microposts)
            .hasSize(1)
            .extracting("content")
                .containsExactly("test micropost2-1")
    }

    @Test
    fun `存在しないユーザーの全てのマイクロポストを取得できる`() {
        var microposts = ms.getAllMicroposts(
                User("unknown user", "unknown@example.com")
                        .apply { id = UUID.randomUUID() })
        assertThat(microposts).hasSize(0)
    }

    @Test
    fun `登録されていないユーザーの全てのマイクロポストを取得できない`() {
        var microposts = ms.getAllMicroposts(
                User("unregistered user", "unreg@example.com"))
        assertThat(microposts).hasSize(0)
    }

    @Test
    fun `IDでマイクロポストを取得できる`() {
        val micropost11 = ms.getAllMicroposts().first { it.content == "test micropost1-1" }

        var found = ms.getMicropostById(micropost11.id!!)
        assertThat(found).isEqualTo(micropost11)
    }

    @Test
    fun `存在しないIDでマイクロポストを取得できる`() {
        var found = ms.getMicropostById(UUID.randomUUID())
        assertThat(found).isNull()
    }

    @Test
    fun `マイクロポストを保存できる`() {
        val user1 = us.getAllUsers().first { it.email == "user1@example.com" }

        val micropost13 = Micropost("test micropost1-3", user1)
        assertThat(micropost13.id).isNull()

        ms.save(micropost13)
        assertThat(micropost13.id).isNotNull()

        val found = ms.getMicropostById(micropost13.id!!)
        assertThat(found).isEqualTo(micropost13)
    }

    @Test
    fun `マイクロポストを削除できる`() {
        val micropost11 = ms.getAllMicroposts().first { it.content == "test micropost1-1" }

        val before = ms.getAllMicroposts()
        assertThat(before).hasSize(3)

        ms.delete(micropost11)

        val after = ms.getAllMicroposts()
        assertThat(after).hasSize(2)
            .doesNotContain(micropost11)
    }
}
