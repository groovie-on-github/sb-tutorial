package com.example.sbtutorial.model.micropost

import com.example.sbtutorial.model.user.User
import org.springframework.data.domain.Page
import org.springframework.data.domain.Pageable
import org.springframework.data.jpa.repository.JpaRepository
import java.util.*

interface MicropostsRepository: JpaRepository<Micropost, UUID> {

    fun findAllByUserOrderByCreatedAtDesc(user: User, pageable: Pageable): Page<Micropost>

    fun countByUser(user: User): Long
}
