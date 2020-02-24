package com.example.sbtutorial.controller

import com.example.sbtutorial.mail.MailSenderService
import com.example.sbtutorial.mail.SendFailedException
import com.example.sbtutorial.model.user.AuthenticationType.PASSWORD_RESET
import com.example.sbtutorial.model.user.User
import com.example.sbtutorial.model.user.UserForm
import com.example.sbtutorial.model.user.UsersService
import org.apache.commons.logging.LogFactory
import org.springframework.stereotype.Controller
import org.springframework.validation.BindingResult
import org.springframework.validation.annotation.Validated
import org.springframework.web.bind.WebDataBinder
import org.springframework.web.bind.annotation.*
import org.springframework.web.servlet.ModelAndView
import org.springframework.web.servlet.mvc.support.RedirectAttributes
import org.springframework.web.util.UriComponentsBuilder
import java.net.URLDecoder
import java.time.Duration
import java.time.Instant
import java.util.*
import javax.servlet.http.HttpServletRequest

@Controller
class PasswordResetsController(private val us: UsersService,
                               private val ms: MailSenderService): BaseController() {

    companion object {
        private const val BASE_PATH = "password_resets"

        private const val BASE_KEY = "view.password-resets"
        private const val TITLE_KEY_NEW = "${BASE_KEY}.new.title"
        private const val TITLE_KEY_EDIT = "${BASE_KEY}.edit.title"

        private const val VIEW_NAME_NEW = "$BASE_PATH/new"
        private const val VIEW_NAME_EDIT = "$BASE_PATH/edit"
    }

    private val log = LogFactory.getLog(PasswordResetsController::class.java)

    @InitBinder("userForm")
    fun initBinderUserForm(binder: WebDataBinder) {
        log.debug("#initBinderUserForm called!")
        binder.setAllowedFields("resetToken", "password", "passwordConfirmation")
    }

    @ModelAttribute("userForm")
    fun modelUserForm(@RequestParam("email", required = false) email: String?,
                      @PathVariable("resetToken", required = false) token: String?): UserForm {
        log.debug("#modelUserForm($email, $token) called!")
        val userForm = UserForm(us, findUser(email))
        return if(token != null) { if(userForm.authenticate(PASSWORD_RESET, token)) userForm else UserForm(us) }
               else userForm
    }


    @GetMapping("/$BASE_PATH/new")
    fun new(mav: ModelAndView): ModelAndView {
        log.debug("#new called!!")

        mav.viewName = VIEW_NAME_NEW
        mav.model[TITLE_KEY] = TITLE_KEY_NEW

        log.debug(">> $mav")
        return mav
    }

    @PostMapping("/$BASE_PATH")
    fun create(@ModelAttribute("userForm") userForm: UserForm,
               request: HttpServletRequest,
               redirect: RedirectAttributes,
               mav: ModelAndView): ModelAndView {
        log.debug("#create called!!")

        if(userForm.id == null) {
            mav.viewName = VIEW_NAME_NEW
            mav.model["flash"] = mapOf("danger" to "$BASE_KEY.create.not-found")

        } else {
            userForm.createResetToken()
            userForm.save()

            val resetUrl = userForm.authenticationUrl(PASSWORD_RESET,
                    UriComponentsBuilder.newInstance().scheme(request.scheme).host(request.serverName)
                        .apply { if(log.isDebugEnabled) port(request.serverPort) }
            )

            try {
                ms.passwordReset(userForm.email!!, mapOf("url" to resetUrl), request.locale)
                redirect.addFlashAttribute("flash", mapOf("info" to "$BASE_KEY.create.mail.sent"))

            } catch(e: SendFailedException) {
                log.warn(">>")
                log.warn(e.text)

                redirect.addFlashAttribute("flash", mapOf("warning" to "$BASE_KEY.create.mail.failed"))
            }

            mav.viewName = "redirect:/"
        }

        log.debug(">> $mav")
        return mav
    }

    @GetMapping("/$BASE_PATH/{resetToken}/edit")
    fun edit(@ModelAttribute("userForm") userForm: UserForm,
             redirect: RedirectAttributes,
             mav: ModelAndView): ModelAndView {
        log.debug("#edit called!!")
        log.debug(">> $userForm")

        when {
            userForm.id == null ->  mav.viewName = "redirect:/"

            !checkExpiration(userForm.resetSentAt) -> {
                mav.viewName = "redirect:/$BASE_PATH/new"
                redirect.addFlashAttribute("flash", mapOf("danger" to "$BASE_KEY.reset.expired"))
            }

            else -> {
                mav.viewName = VIEW_NAME_EDIT
                mav.model[TITLE_KEY] = TITLE_KEY_EDIT
        }   }

        log.debug(">> $mav")
        return mav
    }

    @PostMapping("/$BASE_PATH/{resetToken}")
    fun update(@Validated @ModelAttribute("userForm") userForm: UserForm,
               result: BindingResult,
               redirect: RedirectAttributes,
               mav: ModelAndView): ModelAndView {
        log.debug("#update called!!")
        log.debug(">> $result")

        when {
            userForm.id == null -> mav.viewName = "redirect:/"

            !checkExpiration(userForm.resetSentAt) -> {
                mav.viewName = "redirect:/$BASE_PATH/new"
                redirect.addFlashAttribute("flash", mapOf("danger" to "$BASE_KEY.reset.expired"))
            }

            result.hasErrors() -> {
                mav.viewName = VIEW_NAME_EDIT
            }

            else -> {
                userForm.passwordResetComplete()
                userForm.save()

                mav.viewName = "redirect:/login"
                redirect.addFlashAttribute("flash", mapOf("success" to "$BASE_KEY.update.success"))
        }   }

        log.debug(">> $mav")
        return mav
    }


    private fun findUser(email: String?): User? {
        log.debug("#findUser($email) called!")
        return if(email == null) null else us.findByEmail(
            URLDecoder.decode(email, Charsets.UTF_8.toString()).toLowerCase()
        ).let { if(it?.isActivated == true) it else null }
    }

    private fun checkExpiration(resetSentAt: Date?): Boolean {
        log.debug("#checkExpiration($resetSentAt) called!")
        return if(resetSentAt == null) false
               else Date.from(Instant.now().minus(Duration.ofHours(2L))) <= resetSentAt
    }
}
