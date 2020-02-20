package com.example.sbtutorial.model.user

import org.springframework.data.domain.Page
import org.springframework.data.domain.Pageable
import org.springframework.data.jpa.repository.JpaRepository
import org.springframework.stereotype.Repository
import java.util.*

@Repository
interface UsersRepository: JpaRepository<User, UUID> {

    //serviceからfindAll(Pageable)を呼ぼうとすると
    //findAll(Example)の型推論が出来ないと言われたので定義した
    fun findAllByOrderByCreatedAt(pageable: Pageable): Page<User>

    fun findByEmail(email: String): User?
}
