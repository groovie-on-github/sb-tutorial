package com.example.sbtutorial.domain.user

import org.springframework.data.repository.findByIdOrNull
import org.springframework.stereotype.Service
import org.springframework.transaction.annotation.Transactional
import java.util.*

@Service
class UsersService(private val repository: UsersRepository) {

    fun getAllUsers(): List<User> = repository.findAll()

    fun getUserById(id: UUID) = repository.findByIdOrNull(id)

    @Transactional
    fun save(user: User) = repository.saveAndFlush(user)

    @Transactional
    fun delete(user: User) = repository.delete(user)
}
