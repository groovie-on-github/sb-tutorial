package com.example.sbtutorial.domain.micropost

import com.example.sbtutorial.TestDataSupplier
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
        us: UsersService
    ): TestDataSupplier(usersRepository = us.repository,
                        micropostsRepository = ms.repository) {

    @Test
    fun `全てのマイクロポストを取得できる`() {
        val microposts = ms.getAllMicroposts()
        assertThat(microposts)
                .hasSize(3)
                .containsOnly(micropost11, micropost12, micropost21)
    }

    @Test
    fun `ユーザーの全てのマイクロポストを取得できる`() {
        var microposts = ms.getAllMicroposts(user1.id!!)
        assertThat(microposts)
                .hasSize(2)
                .containsOnly(micropost11, micropost12)

        microposts = ms.getAllMicroposts(user2.id!!)
        assertThat(microposts)
                .hasSize(1)
                .containsOnly(micropost21)
    }

    @Test
    fun `存在しないユーザーの全てのマイクロポストを取得できる`() {
        var microposts = ms.getAllMicroposts(UUID.randomUUID())
        assertThat(microposts).hasSize(0)
    }

    @Test
    fun `IDでマイクロポストを取得できる`() {
        var micropost = ms.getMicropostById(micropost11.id!!)
        assertThat(micropost).isEqualTo(micropost11)
    }

    @Test
    fun `存在しないIDでマイクロポストを取得できる`() {
        var micropost = ms.getMicropostById(UUID.randomUUID())
        assertThat(micropost).isNull()
    }

    @Test
    fun `マイクロポストを保存できる`() {
        val micropost13 = Micropost("test micropost3", user1.id)
        assertThat(micropost13.id).isNull()
        val save = ms.save(micropost13)
        assertThat(micropost13.id).isNotNull()

        assertThat(save).isEqualTo(micropost13)

        val found = ms.getMicropostById(micropost13.id!!)
        assertThat(found).isEqualTo(micropost13)
    }

    @Test
    fun `マイクロポストを削除できる`() {
        val before = ms.getAllMicroposts()
        assertThat(before).hasSize(3)
                .containsOnly(micropost11, micropost12, micropost21)

        ms.delete(micropost11)

        val after = ms.getAllMicroposts()
        assertThat(after).hasSize(2)
                .doesNotContain(micropost11)
                .containsOnly(micropost12, micropost21)
    }
}
