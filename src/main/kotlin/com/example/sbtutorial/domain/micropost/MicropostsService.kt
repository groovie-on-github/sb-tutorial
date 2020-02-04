package com.example.sbtutorial.domain.micropost

import org.springframework.data.repository.findByIdOrNull
import org.springframework.stereotype.Service
import org.springframework.transaction.annotation.Transactional
import java.util.*

@Service
class MicropostsService(val repository: MicropostsRepository) {

    fun getAllMicroposts(): List<Micropost> = repository.findAll()

    fun getAllMicroposts(userId: UUID)= repository.findAllByUserId(userId)

    fun getMicropostById(id: UUID) = repository.findByIdOrNull(id)

    @Transactional
    fun save(micropost: Micropost) = repository.saveAndFlush(micropost)

    @Transactional
    fun delete(micropost: Micropost) = repository.delete(micropost)
}