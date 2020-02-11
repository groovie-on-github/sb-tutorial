package com.example.sbtutorial.controller

import com.example.sbtutorial.model.user.User
import com.example.sbtutorial.model.user.UserForm
import com.example.sbtutorial.model.user.UsersService
import org.apache.commons.logging.LogFactory
import org.springframework.stereotype.Controller
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.validation.BindingResult
import org.springframework.validation.annotation.Validated
import org.springframework.web.bind.WebDataBinder
import org.springframework.web.bind.annotation.*
import org.springframework.web.servlet.ModelAndView
import org.springframework.web.servlet.mvc.support.RedirectAttributes
import java.util.*

@Controller
class UsersController(private val us: UsersService): BaseController() {

    companion object {
        private const val BASE_PATH = "/users"

        private const val BASE_TITLE_KEY = "view.users"
        private const val TITLE_KEY_SHOW = "${BASE_TITLE_KEY}.show.title"
        private const val TITLE_KEY_NEW = "${BASE_TITLE_KEY}.new.title"

        private const val VIEW_NAME_SHOW = "$BASE_PATH/show"
        private const val VIEW_NAME_NEW = "$BASE_PATH/new"
    }

    private val log = LogFactory.getLog(UsersController::class.java)

init { log.debug(us.findAll()[0].id) }

    @InitBinder("userForm")
    fun initBinderUser(binder: WebDataBinder) {
        binder.setAllowedFields("name", "email", "password", "passwordConfirmation")
    }

    @ModelAttribute("userForm")
    fun modelUserForm(@PathVariable("id", required = false) id: UUID?): UserForm {
        log.debug("#modelUserForm($id) called!!")
        val user = if(id != null) us.findById(id) else null
        return if(user == null) UserForm() else UserForm.from(user)
    }


    fun index() {}

    @GetMapping("$BASE_PATH/{id}")
    fun show(mav: ModelAndView,
             @ModelAttribute("userForm") userForm: UserForm): ModelAndView {
        log.debug("#show called!!")

        mav.viewName = VIEW_NAME_SHOW
        mav.model[TITLE_KEY] = TITLE_KEY_SHOW
        mav.model[TITLE_ARGS] = userForm.name

        log.debug(">> $mav")
        return mav
    }

    @GetMapping("/signup")
    fun new(mav: ModelAndView): ModelAndView {
        log.debug("#new called!!")

        mav.viewName = VIEW_NAME_NEW
        mav.model[TITLE_KEY] = TITLE_KEY_NEW

        log.debug(">> $mav")
        return mav
    }

    @PostMapping("/signup")
    fun create(@Validated @ModelAttribute("userForm") userForm: UserForm,
               result: BindingResult,
               redirect: RedirectAttributes,
               mav: ModelAndView): ModelAndView {
        log.debug("#create called!!")

        if(!validateEmailExistence(userForm.email)) {
            result.rejectValue("email", "user.email.Used",
                               arrayOf(userForm.email), "Email is already used")
        }

        if(result.hasErrors()) {
            log.debug(">> $result")
            mav.viewName = VIEW_NAME_NEW
            mav.model[TITLE_KEY] = TITLE_KEY_NEW

        } else {
            val saved = us.save(userForm.populate(User()))
            mav.viewName = "redirect:$BASE_PATH/${saved.id}"
            redirect.addFlashAttribute("flash",
                mapOf("success" to "view.users.show.welcome"))
        }

        log.debug(">> $mav")
        return mav
    }

    fun edit() {}
    fun update() {}
    fun destroy() {}


    private fun validateEmailExistence(email: String): Boolean {
        return us.findByEmail(email) == null
    }
}
