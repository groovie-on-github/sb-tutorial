package com.example.sbtutorial.domain.micropost

import com.example.sbtutorial.domain.user.User
import org.apache.commons.logging.LogFactory
import org.springframework.data.repository.findByIdOrNull
import org.springframework.stereotype.Service
import org.springframework.transaction.annotation.Transactional
import java.lang.IllegalStateException
import java.util.*

@Service
class MicropostsService(private val repository: MicropostsRepository) {

    // ロガー
    private val log = LogFactory.getLog(MicropostsService::class.java)


    fun getAllMicroposts(): List<Micropost> = repository.findAll()

    fun getAllMicroposts(user: User): List<Micropost> {
        return try {
            repository.findAllByUser(user)

        } catch(e: Exception) {
            log.warn("MicropostsService#getAllMicroposts($user)", e)
            emptyList()
        }
    }

    fun getMicropostById(id: UUID) = repository.findByIdOrNull(id)

    @Transactional
    fun save(micropost: Micropost) = repository.saveAndFlush(micropost)

    @Transactional
    fun delete(micropost: Micropost) = repository.delete(micropost)
}