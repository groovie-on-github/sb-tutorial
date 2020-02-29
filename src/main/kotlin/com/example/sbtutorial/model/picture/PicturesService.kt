package com.example.sbtutorial.model.picture

import com.example.sbtutorial.model.IService
import org.springframework.data.repository.findByIdOrNull
import org.springframework.stereotype.Service
import java.util.*

@Service
class PicturesService(private val pr: PicturesRepository): IService<Picture> {

    fun findById(id: UUID): Picture? = pr.findByIdOrNull(id)

    fun findByHash(hash: ByteArray): Picture? = pr.findByHash(hash)

    override fun save(entity: Picture): Picture = pr.saveAndFlush(entity)

    override fun delete(entity: Picture) = pr.delete(entity)
}