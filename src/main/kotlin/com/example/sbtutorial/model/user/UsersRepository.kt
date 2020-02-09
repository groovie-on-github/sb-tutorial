package com.example.sbtutorial.model.user

import org.springframework.data.jpa.repository.JpaRepository
import org.springframework.stereotype.Repository
import java.util.*

@Repository
interface UsersRepository: JpaRepository<User, UUID> {

    fun findByEmail(email: String): User?
}
