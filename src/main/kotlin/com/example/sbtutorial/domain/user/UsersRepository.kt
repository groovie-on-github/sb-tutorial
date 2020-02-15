package com.example.sbtutorial.domain.user

import org.springframework.data.jpa.repository.JpaRepository
import java.util.UUID

interface UsersRepository: JpaRepository<User, UUID> {

    fun findByName(name: String): List<User>

    fun findByEmail(email: String): User?
}