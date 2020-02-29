package com.example.sbtutorial.model.picture

import org.springframework.data.jpa.repository.JpaRepository
import java.util.*

interface PicturesRepository: JpaRepository<Picture, UUID> {

    fun findByHash(content: ByteArray): Picture?
}
