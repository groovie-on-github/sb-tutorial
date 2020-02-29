package com.example.sbtutorial.model.micropost

import com.example.sbtutorial.model.IService
import com.example.sbtutorial.model.user.User
import org.springframework.data.domain.Page
import org.springframework.data.domain.Pageable
import org.springframework.data.repository.findByIdOrNull
import org.springframework.stereotype.Service
import java.util.*

@Service
class MicropostsService(private val mr: MicropostsRepository): IService<Micropost> {

    fun findAll(user: User, pageable: Pageable): Page<Micropost> = mr.findAllByUserOrderByCreatedAtDesc(user, pageable)

    fun findById(id: UUID): Micropost? = mr.findByIdOrNull(id)

    fun countByUser(user: User): Long = mr.countByUser(user)

    override fun save(entity: Micropost): Micropost = mr.saveAndFlush(entity)

    override fun delete(entity: Micropost) = mr.delete(entity)
}