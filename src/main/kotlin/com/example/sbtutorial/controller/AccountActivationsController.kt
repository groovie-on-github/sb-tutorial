package com.example.sbtutorial.controller

import com.example.sbtutorial.model.user.UsersService
import org.apache.commons.logging.LogFactory
import org.springframework.stereotype.Controller
import org.springframework.web.bind.annotation.*
import org.springframework.web.servlet.ModelAndView
import org.springframework.web.servlet.mvc.support.RedirectAttributes
import java.util.*

@Controller
@RequestMapping("/account_activation")
class AccountActivationsController(private val us: UsersService): BaseController() {

    private val log = LogFactory.getLog(AccountActivationsController::class.java)


    @GetMapping("{activationToken}/edit")
    fun edit(@PathVariable("activationToken") token: String,
             @RequestParam("email") email: String,
             redirect: RedirectAttributes,
             mav: ModelAndView): ModelAndView {
        log.debug("#edit called!!")

        val user = us.findByEmail(email.toLowerCase())

        if(user!= null && !user.isActivated &&
            us.authenticate(token, user.activationDigest!!) {
                user.isActivated = true
                user.activatedAt = Date()
                us.save(user)
            }
        ) {
            log.debug(">> authenticate succeed")
            mav.viewName = "redirect:/login"
            redirect.addFlashAttribute("flash", mapOf("success" to "view.account.activations.authenticate.success"))

        } else {
            log.debug(">> authenticate failed")
            mav.viewName = "redirect:/"
            redirect.addFlashAttribute("flash", mapOf("danger" to "view.account.activations.authenticate.fail"))
        }

        log.debug(">> $mav")
        return mav
    }
}
