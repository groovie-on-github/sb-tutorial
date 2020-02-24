package com.example.sbtutorial.controller

import com.example.sbtutorial.model.user.AuthenticationType.ACTIVATION
import com.example.sbtutorial.model.user.UserForm
import com.example.sbtutorial.model.user.UsersService
import org.apache.commons.logging.LogFactory
import org.springframework.stereotype.Controller
import org.springframework.web.bind.annotation.*
import org.springframework.web.servlet.ModelAndView
import org.springframework.web.servlet.mvc.support.RedirectAttributes

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

        val userForm = UserForm(us, us.findByEmail(email.toLowerCase()))

        if(userForm.id != null && !userForm.isActivated && userForm.authenticate(ACTIVATION,token)) {
            log.debug(">> authenticate succeed")
            mav.viewName = "redirect:/login"
            redirect.addFlashAttribute("flash", mapOf("success" to "view.account-activations.authenticate.success"))

        } else {
            log.debug(">> authenticate failed")
            mav.viewName = "redirect:/"
            redirect.addFlashAttribute("flash", mapOf("danger" to "view.account-activations.authenticate.fail"))
        }

        log.debug(">> $mav")
        return mav
    }
}
