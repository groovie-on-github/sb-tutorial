package com.example.sbtutorial.model.micropost

import com.example.sbtutorial.model.user.User
import org.springframework.data.domain.Page
import org.springframework.data.domain.Pageable
import org.springframework.data.jpa.repository.JpaRepository
import org.springframework.data.jpa.repository.Query
import org.springframework.data.repository.query.Param
import java.util.*

interface MicropostsRepository: JpaRepository<Micropost, UUID> {

    fun findAllByUserOrderByCreatedAtDesc(user: User, pageable: Pageable): Page<Micropost>

    @Query("SELECT * FROM micropost m WHERE m.\"user_id\" IN (" +
           "SELECT :id UNION " +
           "SELECT r.followed_id FROM user_relationships r WHERE r.follower_id = :id)",
           nativeQuery = true)
    fun findAllWithFollowing(@Param("id") id: UUID, pageable: Pageable): Page<Micropost>

    fun countByUser(user: User): Long
}
