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

    fun authenticationUrl(type: AuthenticationType, builder: UriComponentsBuilder, email: String, token: String): String =
        builder.path("/${type.value}/{token}/edit").queryParam("email", "{email}").build(token, email).toString()
}
