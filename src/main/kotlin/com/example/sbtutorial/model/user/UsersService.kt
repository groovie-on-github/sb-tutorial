package com.example.sbtutorial.model.user

import com.example.sbtutorial.model.IService
import org.springframework.data.domain.Page
import org.springframework.data.domain.Pageable
import org.springframework.data.repository.findByIdOrNull
import org.springframework.security.crypto.password.PasswordEncoder
import org.springframework.stereotype.Service
import org.springframework.transaction.annotation.Transactional
import org.springframework.util.Base64Utils
import org.springframework.web.util.UriComponentsBuilder
import java.util.*

@Service
class UsersService(private val repository: UsersRepository,
                   private val passwordEncoder: PasswordEncoder): IService<User> {

    fun findAll(): List<User> = repository.findAll()

    fun findAllActivated(pageable: Pageable): Page<User> = repository.findAllByIsActivated(true, pageable)

    fun findById(id: UUID): User? = repository.findByIdOrNull(id)

    fun findActivatedById(id: UUID): User? = repository.findByIdAndIsActivated(id, true)

    fun findByEmail(email: String): User? = repository.findByEmail(email)

    @Transactional
    override fun save(entity: User): User = repository.saveAndFlush(entity)

    @Transactional
    override fun delete(entity: User) = repository.delete(entity)

    fun newToken(): String = Base64Utils.encodeToUrlSafeString(UUID.randomUUID().toString().toByteArray())

    fun digest(token: String) : String = passwordEncoder.encode(token)

    fun authenticate(token: String, digest: String, successHandler: () -> Unit = {}): Boolean =
        passwordEncoder.matches(token, digest).also { if(it) successHandler() }

    fun buildAuthenticationUrl(type: AuthenticationType, builder: UriComponentsBuilder, email: String, token: String): String =
        builder.path("/${type.value}/{token}/edit").queryParam("email", "{email}").build(token, email).toString()

    @Transactional
    fun follow(follower: User, followed: User): Int = repository.insertUserRelationShips(follower.id!!, followed.id!!)

    @Transactional
    fun unfollow(follower: User, followed: User): Int = repository.deleteUserRelationShips(follower.id!!, followed.id!!)

    fun isFollowing(followerId: UUID, followedId: UUID): Boolean =
        repository.countByIdAndFollowingId(followerId, followedId) == 1L

    fun getFollowingCount(entity: User): Long = repository.countFollowingById(entity.id!!)

    fun getFollowersCount(entity: User): Long = repository.countFollowersById(entity.id!!)

    fun findFollowing(entity: User, pageable: Pageable): Page<User> = repository.findFollowingById(entity.id!!, pageable)

    fun findFollowers(entity: User, pageable: Pageable): Page<User> = repository.findFollowersById(entity.id!!, pageable)
}
