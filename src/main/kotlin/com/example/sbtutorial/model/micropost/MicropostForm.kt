package com.example.sbtutorial.model.micropost

import com.example.sbtutorial.model.BaseForm
import com.example.sbtutorial.model.picture.Picture
import com.example.sbtutorial.model.picture.PicturesService
import com.example.sbtutorial.model.user.User
import org.apache.commons.logging.LogFactory
import org.springframework.security.core.token.Sha512DigestUtils
import org.springframework.validation.BindingResult
import org.springframework.web.multipart.MultipartFile
import java.awt.AlphaComposite
import java.awt.RenderingHints
import java.awt.image.BufferedImage
import java.io.ByteArrayInputStream
import java.io.ByteArrayOutputStream
import java.io.IOException
import java.io.InputStream
import java.util.*
import javax.imageio.IIOImage
import javax.imageio.ImageIO
import javax.imageio.ImageWriteParam
import javax.validation.constraints.NotBlank
import javax.validation.constraints.Size


class MicropostForm(service: MicropostsService, private val picturesService: PicturesService,
                    entity: Micropost? = null, private val user: User? = null)
    : BaseForm<Micropost, MicropostsService>(entity, service) {

    companion object {
        const val NAME = "micropostForm"
    }


    init {
        addValidation("validate picture content size") { result ->
            return@addValidation when {
                picture?.originalFilename.isNullOrBlank() -> true
                picture!!.size > Picture.CONTENT_SIZE_MAX -> {
                    result.rejectValue("picture", "picture.content.Size",
                        arrayOf(Picture.CONTENT_SIZE_MAX / 1024 / 1024), "picture size too big")
                    false
                }
                else -> true
            }
        }

        addValidation("validate picture format") { result ->
            return@addValidation when {
                picture?.originalFilename.isNullOrBlank() -> true
                !isImage(picture!!) -> {
                    result.rejectValue("picture", "micropost.picture.invalid",
                        arrayOf(picture!!.originalFilename), "uploaded file is not a image")
                    false
                }
                else -> true
            }
        }
    }

    private val log = LogFactory.getLog(MicropostForm::class.java)


    @NotBlank(message = "{micropost.content.NotBlank}")
    @Size(max = Micropost.CONTENT_LENGTH_MAX, message = "{micropost.content.Size}")
    var content: String = ""
        set(value) { field = value.trim()}

    var picture: MultipartFile? = null


    override fun populate(): Micropost {
        if(user == null) throw IllegalStateException("property user should exists")

        if(entity == null) entity = Micropost(content, user)
        else entity?.apply { this.content = this@MicropostForm.content }

        val micropost = entity!!

        if(!picture?.originalFilename.isNullOrBlank()) {
            val bytes = resizePicture(picture!!)
            micropost.picture = picturesService.findByHash(Sha512DigestUtils.sha(bytes)) ?: Picture(bytes)
        }

        return micropost
    }


    private fun isImage(picture: MultipartFile): Boolean {
        log.debug("#isImage called!!")
        return try { ImageIO.read(picture.inputStream) != null }
        catch (e: IOException) { log.debug(">> invalid format", e); false }
    }

    private fun resizePicture(picture: MultipartFile): ByteArray {
        log.debug("#resizePicture called!!")
        log.debug(">> picture.size => ${picture.size}")
        val original = ImageIO.read(picture.inputStream)
        val scale = when {
            original.width > Picture.WIDTH_MAX -> Picture.WIDTH_MAX / original.width
            original.height > Picture.HEIGHT_MAX -> Picture.HEIGHT_MAX / original.height
            else -> return picture.bytes
        }

        log.debug(">> scale => $scale")
        val width = (original.width * scale).toInt()
        val height = (original.height * scale).toInt()
        val resized = BufferedImage(width, height, BufferedImage.TYPE_4BYTE_ABGR)
        resized.createGraphics().apply {
            composite = AlphaComposite.Src
            setRenderingHint(RenderingHints.KEY_INTERPOLATION, RenderingHints.VALUE_INTERPOLATION_BILINEAR)
            setRenderingHint(RenderingHints.KEY_RENDERING, RenderingHints.VALUE_RENDER_QUALITY)
            setRenderingHint(RenderingHints.KEY_ANTIALIASING, RenderingHints.VALUE_ANTIALIAS_ON)
            drawImage(original, 0, 0, width, height, null)
            dispose()
        }

        val output = ByteArrayOutputStream()
        ImageIO.createImageOutputStream(output).use {
            ImageIO.getImageWritersByFormatName("png").next().apply {
                val param = defaultWriteParam.apply {
                    //Herokuで動かなかった
//                    compressionMode = ImageWriteParam.MODE_EXPLICIT
//                    compressionQuality = 1.0f
                }
                setOutput(it)
                write(null, IIOImage(resized, null, null), param)
            }.dispose()
        }

        return output.apply { flush() }.toByteArray().also { log.debug(">> resized.size => ${it.size}") }
    }
}
