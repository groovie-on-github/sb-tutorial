package com.example.sbtutorial.controller

import com.example.sbtutorial.helper.SessionsHelper
import com.example.sbtutorial.model.micropost.MicropostForm
import com.example.sbtutorial.model.micropost.MicropostsService
import com.example.sbtutorial.model.picture.PicturesService
import com.example.sbtutorial.model.user.UserForm
import com.example.sbtutorial.model.user.UsersService
import org.apache.commons.logging.LogFactory
import org.springframework.data.domain.PageRequest
import org.springframework.stereotype.Controller
import org.springframework.validation.BindingResult
import org.springframework.validation.annotation.Validated
import org.springframework.web.bind.WebDataBinder
import org.springframework.web.bind.annotation.*
import org.springframework.web.servlet.ModelAndView
import org.springframework.web.servlet.mvc.support.RedirectAttributes
import java.util.*

@Controller
class MicropostsController(private val ms: MicropostsService,
                           private val us: UsersService,
                           private val ps: PicturesService,
                           private val sh: SessionsHelper): BaseController() {

    private val log = LogFactory.getLog(MicropostsController::class.java)

    companion object {
        const val BASE_PATH = "microposts"
    }

    @InitBinder(MicropostForm.NAME)
    fun initBinderMicropostForm(binder: WebDataBinder) {
        binder.setAllowedFields("content", "picture")
    }

    @ModelAttribute(MicropostForm.NAME)
    fun modelMicropostForm(@PathVariable("id", required = false) id: UUID? = null): MicropostForm {
        log.debug("#modelMicropostForm called!!")
        val micropost = if(id == null) null else ms.findById(id)
        val user = if(sh.loggedIn) us.findById(sh.currentId!!) else null
        return MicropostForm(ms, ps, micropost, user)
    }


    @PostMapping("/$BASE_PATH")
    fun create(@Validated @ModelAttribute(MicropostForm.NAME) micropostForm: MicropostForm,
               result: BindingResult,
               redirect: RedirectAttributes,
               mav: ModelAndView): ModelAndView {
        log.debug("#create called!!")

        micropostForm.additionalValidate(result)

        if(result.hasErrors()) {
            log.debug(">> $result")
            mav.viewName = "${StaticPagesController.BASE_PATH}/home"
            val userForm = UserForm.from(sh.currentId!!, us, ms)
            mav.model[UserForm.NAME] = userForm
            mav.model[UserForm.FEED] = userForm.getFeed(PageRequest.of(0, DEFAULT_PAGE_SIZE))

        } else {
            micropostForm.save()

            mav.viewName = "redirect:/"
            redirect.addFlashAttribute("flash", mapOf("success" to "view.microposts.create.success"))
        }

        log.debug(">> $mav")
        return mav
    }

    @PostMapping("/$BASE_PATH/{id}/delete")
    fun destroy(@ModelAttribute(MicropostForm.NAME) micropostForm: MicropostForm,
                @RequestHeader("referer", required = false) referer: String?,
                redirect: RedirectAttributes,
                mav: ModelAndView): ModelAndView {
        log.debug("#destroy called!!")
        log.debug(">> $micropostForm")
        log.debug(">> ${sh.currentId}")

        micropostForm.delete()

        mav.viewName = "redirect:" + (referer ?: "/")
        redirect.addFlashAttribute("flash", mapOf("success" to "view.microposts.destroy.success"))

        log.debug(">> $mav")
        return mav
    }

    @GetMapping("/$BASE_PATH/picture/{id}", produces = ["image/*"])
    @ResponseBody
    fun picture(@PathVariable("id") id: UUID) = ps.findById(id)?.content
}