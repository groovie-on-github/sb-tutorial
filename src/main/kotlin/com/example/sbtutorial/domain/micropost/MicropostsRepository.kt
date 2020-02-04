package com.example.sbtutorial.domain.micropost

import com.example.sbtutorial.domain.user.User
import org.springframework.data.jpa.repository.JpaRepository
import java.util.UUID

interface MicropostsRepository: JpaRepository<Micropost, UUID> {

    fun findAllByUser(user: User): List<Micropost>
}