package com.example.sbtutorial.model.user

import org.springframework.data.domain.Page
import org.springframework.data.domain.Pageable
import org.springframework.data.jpa.repository.JpaRepository
import org.springframework.stereotype.Repository
import java.util.*

@Repository
interface UsersRepository: JpaRepository<User, UUID> {

    fun findAllByIsActivated(isActivated: Boolean, pageable: Pageable): Page<User>

    fun findByIdAndIsActivated(id: UUID, isActivated: Boolean): User?

    fun findByEmail(email: String): User?
}
