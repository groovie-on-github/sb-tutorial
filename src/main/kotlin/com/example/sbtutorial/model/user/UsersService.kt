package com.example.sbtutorial.model.user

import org.springframework.data.domain.Page
import org.springframework.data.domain.Pageable
import org.springframework.data.repository.findByIdOrNull
import org.springframework.stereotype.Service
import org.springframework.transaction.annotation.Transactional
import java.util.*

@Service
class UsersService(private val repository: UsersRepository) {

    fun findAll(): List<User> = repository.findAll()

    fun findAll(pageable: Pageable): Page<User> = repository.findAllByOrderByCreatedAt(pageable)

    fun findById(id: UUID): User? = repository.findByIdOrNull(id)

    fun findByEmail(email: String): User? = repository.findByEmail(email)

    @Transactional
    fun save(user: User): User = repository.saveAndFlush(user)

    @Transactional
    fun delete(user: User) = repository.delete(user)
}
