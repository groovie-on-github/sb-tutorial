package com.example.sbtutorial.model.micropost

import com.example.sbtutorial.helper.TimeHelper
import com.example.sbtutorial.model.picture.Picture
import com.example.sbtutorial.model.picture.PicturesRepository
import com.example.sbtutorial.model.user.User
import com.example.sbtutorial.model.user.UsersRepository
import com.github.javafaker.Faker
import org.apache.commons.lang3.RandomUtils
import org.assertj.core.api.Assertions.*
import org.junit.jupiter.api.BeforeEach
import org.junit.jupiter.api.Test
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest
import org.springframework.boot.test.autoconfigure.orm.jpa.TestEntityManager
import org.springframework.data.domain.Example
import org.springframework.data.domain.ExampleMatcher
import org.springframework.data.domain.PageRequest
import org.springframework.data.domain.Sort
import org.springframework.data.repository.findByIdOrNull
import org.springframework.test.context.jdbc.Sql
import java.time.Period
import java.time.ZonedDateTime
import java.util.*
import javax.validation.Validation

@DataJpaTest
@Sql("/data-users.sql", "/data-microposts.sql")
class MicropostTests @Autowired constructor(private val em: TestEntityManager, private val ur:UsersRepository,
                     private val mr: MicropostsRepository, private val pr: PicturesRepository) {

    private lateinit var user: User

    private lateinit var micropost: Micropost

    private val validator = Validation.buildDefaultValidatorFactory().validator

    @BeforeEach
    fun setUp() {
        user = ur.findByEmail("michael@example.com")!!
        micropost = Micropost("Lorem ipsum", user)
    }

    @Test
    fun `practice 13-1-1 (1)`() {
        assertThat(micropost.createdAt).isNull()
        assertThat(micropost.updatedAt).isNull()
        println(">> micropost.createdAt => ${micropost.createdAt}")
        println(">> micropost.updatedAt => ${micropost.updatedAt}")
    }

    @Test
    fun `practice 13-1-1 (2)`() {
        assertThat(micropost.user).isEqualTo(user)
        println(">> micropost.user => ${micropost.user}")
        assertThat(micropost.user.name).isEqualTo("Michael Example")
        println(">> micropost.user.name => ${micropost.user.name}")
    }

    @Test
    fun `practice 13-1-1 (3)`() {
        mr.saveAndFlush(micropost)

        assertThat(micropost.createdAt).isNotNull()
        assertThat(micropost.updatedAt).isNotNull().isEqualTo(micropost.createdAt)
        println(">> micropost.createdAt => ${micropost.createdAt}")
        println(">> micropost.updatedAt => ${micropost.updatedAt}")
    }

    @Test
    fun `should be valid`() {
        assertThat(validator.validate(micropost)).isEmpty()
    }

    @Test
    fun `user id should be present`() {
        // プログラム的にuserはnull不可とした
//        micropost.user = null
//        assertThat(validator.validate(micropost)).isNotEmpty
    }

    @Test
    fun `content should be present`() {
        micropost.content = "   "
        assertThat(validator.validate(micropost)).isNotEmpty
    }

    @Test
    fun `content should be at most 140 characters`() {
        micropost.content = "a".repeat(141)
        assertThat(validator.validate(micropost)).isNotEmpty
    }

    @Test
    fun `practice 13-1-2 (1)`() {
        //userはnullが許されていない
        //val micropost = Micropost("", null)
        micropost.content = ""
        val result = validator.validate(micropost)
        assertThat(result).isNotEmpty
        result.forEach { println(">> ${it.message}") }
    }

    @Test
    fun `practice 13-1-2 (2)`() {
        //userはnullが許されていない
        //val micropost = Micropost("a".repeat(141), null)
        micropost.content = "a".repeat(141)
        val result = validator.validate(micropost)
        assertThat(result).isNotEmpty
        result.forEach { println(">> ${it.message}") }
    }

    @Test
    fun `practice 13-1-3 (1)`() {
        val micropost = Micropost("Lorem ipsum", user)
        mr.saveAndFlush(micropost)
        assertThat(micropost.id).isNotNull()
    }

    @Test
    fun `practice 13-1-3 (2)`() {
        val micropost = Micropost("Lorem ipsum", user)
        val before = user.micropostList.size
        mr.saveAndFlush(micropost)
        em.refresh(user)
        assertThat(user.micropostList.size).isEqualTo(before + 1)
        assertThat(user.micropostList.find { it.id == micropost.id }).isNotNull
        assertThat(user.micropostList.find { it == micropost }).isNotNull
    }

    @Test
    fun `practice 13-1-3 (3)`() {
        val micropost = Micropost("Lorem ipsum", user)
        mr.saveAndFlush(micropost)
        em.refresh(user)
        assertThat(micropost.user == user).isTrue()
        assertThat(user.micropostList.first() == micropost).isTrue()
    }

    @Test
    fun `order should be most recent first`() {
        val microposts = mr.findAll(Sort.by(Sort.Direction.DESC, "createdAt"))
        assertThat(microposts.find { it.content == "Writing a short test" })
            .isEqualTo(microposts.first())
    }

    @Test
    fun `practice 13-1-4 (1)`() {
        val microposts = mr.findAll(PageRequest.of(0, 1, Sort.by("createdAt").descending()))
        val first = microposts.first()
        val last = microposts.last()
        assertThat(first.createdAt).isAfterOrEqualTo(last.createdAt)
        println(">> first.createdAt => ${first.createdAt}")
        println(">> last.createdAt => ${last.createdAt}")
    }

    @Test
    fun `practice 13-1-4 (2)`() {
        val first = mr.findAll(PageRequest.of(0, 1, Sort.by("createdAt").descending())).content[0]
        val last = mr.findAll(PageRequest.of(0, 1, Sort.by("createdAt"))).content[0]
        assertThat(first.createdAt).isAfterOrEqualTo(last.createdAt)
        println(">> first.createdAt => ${first.createdAt}")
        println(">> last.createdAt => ${last.createdAt}")
    }

    @Test
    fun `practice 13-1-4 (3)`() {
        println("> mr.count => ${mr.count()}")

        val first = user.micropostList.also { println(">> count => ${it.size}"); it.forEach { m -> println(">> $m") } }
            .first()

        val example = Example.of(Micropost("", user), ExampleMatcher.matching().withIgnorePaths("content"))
        val microposts = mr.findAll(example, Sort.by("createdAt").descending())
            .also { println(">>> count => ${it.size}"); it.forEach { m -> println(">>> $m") } }

        assertThat(first).isEqualTo(microposts.first())
        val id = first.id!!
        assertThat(id).isNotNull()
        var found = mr.findByIdOrNull(id)
        assertThat(found).isNotNull
        em.remove(user)
        found = mr.findByIdOrNull(id)
        assertThat(found).isNull()
    }

    @Test
    fun `practice 13-2-1 (1)`() {
        var pair = TimeHelper.timeAgoInWords(Date.from(ZonedDateTime.now().minus(Period.ofWeeks(3)).toInstant()))
        println(">> 3 weeks ago => $pair")
        assertThat(pair.first).contains("week")
        assertThat(pair.second).isEqualTo(3)

        pair = TimeHelper.timeAgoInWords(Date.from(ZonedDateTime.now().minus(Period.ofMonths(6)).toInstant()))
        println(">> 6 months ago => $pair")
        assertThat(pair.first).contains("month")
        assertThat(pair.second).isEqualTo(6)
    }

    @Test
    fun `practice 13-2-1 (2)`() {
        val pair = TimeHelper.timeAgoInWords(Date.from(ZonedDateTime.now().minus(Period.ofYears(1)).toInstant()))
        println(">> 1 year ago => $pair")
        assertThat(pair.first).contains("year")
        assertThat(pair.second).isEqualTo(1)
    }

    @Test
    fun `practice 13-2-1 (3)`() {
        assertThat(user.micropostList).isInstanceOf(List::class.java)
        println(">> ${user.micropostList::class}")
    }

    @Test
    fun `practice 13-2-2 (1)`() {
        println(">> ${(1..10).asIterable().take(6)}")
    }

    @Test
    fun `practice 13-2-2 (2)`() {
        println(">> ${(1..10).take(6)}")
    }

    @Test
    fun `practice 13-2-2 (3)`() {
        var f = Faker.instance()
        println(">> ${f.university().name()}")
        println(">> ${f.phoneNumber().phoneNumber()}")
        println(">> ${f.hipster().word()}")
        println(">> ${f.chuckNorris().fact()}")

        f = Faker.instance(Locale.JAPAN)
        println(">> ${f.university().name()}")
        println(">> ${f.phoneNumber().phoneNumber()}")
        println(">> ${f.hipster().word()}")
        println(">> ${f.chuckNorris().fact()}")
        println(">> ${f.dragonBall().character()}")
        println(">> ${f.pokemon().name()}")
    }

    @Test
    fun `test cascade delete picture`() {
        val mCountBefore = mr.count()
        val pCountBefore = pr.count()

        val p1 = Picture(RandomUtils.nextBytes(1 * 1024 * 1024))
        val m1 = Micropost("test1", user, p1)

        mr.saveAndFlush(m1)
        assertThat(mr.count()).isEqualTo(mCountBefore + 1)
        assertThat(pr.count()).isEqualTo(pCountBefore + 1)

        val m2 = Micropost("test2", user, p1)
        mr.saveAndFlush(m2)
        assertThat(mr.count()).isEqualTo(mCountBefore + 2)
        assertThat(pr.count()).isEqualTo(pCountBefore + 1)

        mr.delete(m1)
        assertThat(mr.count()).isEqualTo(mCountBefore + 1)
        assertThat(pr.count()).isEqualTo(pCountBefore + 1)

        mr.delete(m2)
        assertThat(mr.count()).isEqualTo(mCountBefore)
        assertThat(pr.count()).isEqualTo(pCountBefore)
    }
}
