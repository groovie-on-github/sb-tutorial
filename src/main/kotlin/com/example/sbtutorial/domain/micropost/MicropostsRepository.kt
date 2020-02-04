package com.example.sbtutorial.domain.micropost

import org.springframework.data.jpa.repository.JpaRepository
import java.util.UUID

interface MicropostsRepository: JpaRepository<Micropost, UUID> {

    fun findAllByUserId(userId: UUID): List<Micropost>
}