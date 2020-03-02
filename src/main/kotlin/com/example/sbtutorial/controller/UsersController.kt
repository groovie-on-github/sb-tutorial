package com.example.sbtutorial.controller

import com.example.sbtutorial.helper.SessionsHelper
import com.example.sbtutorial.mail.MailSenderService
import com.example.sbtutorial.mail.SendFailedException
import com.example.sbtutorial.model.UpdateGroup
import com.example.sbtutorial.model.micropost.MicropostsService
import com.example.sbtutorial.model.user.AuthenticationType.ACTIVATION
import com.example.sbtutorial.model.user.UserForm
import com.example.sbtutorial.model.user.UsersService
import org.apache.commons.logging.LogFactory
import org.springframework.beans.propertyeditors.StringTrimmerEditor
import org.springframework.data.domain.PageRequest
import org.springframework.data.domain.Pageable
import org.springframework.stereotype.Controller
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.validation.BindingResult
import org.springframework.validation.annotation.Validated
import org.springframework.web.bind.WebDataBinder
import org.springframework.web.bind.annotation.*
import org.springframework.web.servlet.ModelAndView
import org.springframework.web.servlet.mvc.support.RedirectAttributes
import org.springframework.web.util.UriComponentsBuilder
import java.util.*
import javax.servlet.http.HttpServletRequest

@Controller
class UsersController(private val us: UsersService,
                      private val ms: MicropostsService,
                      private val mailer: MailSenderService): BaseController() {

    companion object {
        const val BASE_PATH = "users"

        private const val BASE_KEY = "view.users"
        private const val TITLE_KEY_INDEX = "${BASE_KEY}.index.title"
        private const val TITLE_KEY_SHOW = "${BASE_KEY}.show.title"
        private const val TITLE_KEY_NEW = "${BASE_KEY}.new.title"
        private const val TITLE_KEY_EDIT = "${BASE_KEY}.edit.title"
        private const val TITLE_KEY_FOLLOWING = "${BASE_KEY}.show-follow.following.title"
        private const val TITLE_KEY_FOLLOWERS = "${BASE_KEY}.show-follow.followers.title"

        private const val VIEW_NAME_INDEX = "$BASE_PATH/index"
        private const val VIEW_NAME_SHOW = "$BASE_PATH/show"
        private const val VIEW_NAME_NEW = "$BASE_PATH/new"
        private const val VIEW_NAME_EDIT = "$BASE_PATH/edit"
        private const val VIEW_NAME_FOLLOWING = "$BASE_PATH/show_follow"
        private const val VIEW_NAME_FOLLOWERS = "$BASE_PATH/show_follow"
    }

    private val log = LogFactory.getLog(UsersController::class.java)


    @InitBinder(UserForm.NAME)
    fun initBinderUser(binder: WebDataBinder) {
        binder.setAllowedFields("name", "email", "password", "passwordConfirmation")
        binder.registerCustomEditor(String::class.java, StringTrimmerEditor(true))
    }

    @ModelAttribute(UserForm.NAME)
    fun modelUserForm(@PathVariable("id", required = false) id: UUID?): UserForm {
        log.debug("#modelUserForm($id) called!!")
        val user = if(id != null) us.findActivatedById(id) else null
        log.debug(">> user => $user")
        return UserForm(us, user, ms)
    }


    @GetMapping("/$BASE_PATH")
    fun index(@RequestParam("size", required = false) size: Int?,
              pageable: Pageable,
              mav: ModelAndView): ModelAndView {
        log.debug("#show called!!")

        mav.viewName = VIEW_NAME_INDEX
        mav.model[TITLE_KEY] = TITLE_KEY_INDEX
        mav.model["users"] = us.findAllActivated(PageRequest.of(pageable.pageNumber, size ?: DEFAULT_PAGE_SIZE))
        mav.model["gravatarOpts"] = mapOf("size" to 50)

        log.debug(">> $mav")
        return mav
    }

    @GetMapping("/$BASE_PATH/{id}")
    fun show(@ModelAttribute(UserForm.NAME) userForm: UserForm,
             @RequestParam("size", required = false) size: Int?,
             pageable: Pageable,
             mav: ModelAndView): ModelAndView {
        log.debug("#show called!!")

        if(userForm.id == null) {
            mav.viewName = "redirect:/"

        } else {
            mav.viewName = VIEW_NAME_SHOW
            mav.model[TITLE_KEY] = TITLE_KEY_SHOW
            mav.model[TITLE_ARGS] = userForm.name
            mav.model["microposts"] = userForm.getMicroposts(PageRequest.of(pageable.pageNumber, size ?: DEFAULT_PAGE_SIZE))
        }

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
    fun create(@Validated @ModelAttribute(UserForm.NAME) userForm: UserForm,
               result: BindingResult,
               request: HttpServletRequest,
               redirect: RedirectAttributes,
               mav: ModelAndView): ModelAndView {
        log.debug("#create called!!")

        if(!result.hasFieldErrors("email")) userForm.additionalValidate(result)

        log.debug(">> $result")
        if(result.hasErrors()) {
            log.debug(">> $result")
            mav.viewName = VIEW_NAME_NEW
            mav.model[TITLE_KEY] = TITLE_KEY_NEW

        } else {
            userForm.createActivationToken()
            userForm.save()
            log.debug(">> create succeeded!!")
/*
            // ログイン処理を行う
            val authRequest = UsernamePasswordAuthenticationToken(userForm.email, userForm.password)
            val authResult = am.authenticate(authRequest)
            SecurityContextHolder.getContext().authentication = authResult

            mav.viewName = "redirect:/$BASE_PATH/${saved.id}"
            redirect.addFlashAttribute("flash",
                mapOf("success" to "view.users.show.welcome"))
*/
            val activationUrl = userForm.authenticationUrl(ACTIVATION,
                    UriComponentsBuilder.newInstance().scheme(request.scheme).host(request.serverName)
                        .apply { if(log.isDebugEnabled) port(request.serverPort) }
            )

            val params = mapOf("name" to userForm.name!!, "url" to activationUrl)

            try {
                mailer.accountActivation(userForm.email!!, params, request.locale)
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

    @GetMapping("/$BASE_PATH/{id}/edit")
    fun edit(mav: ModelAndView): ModelAndView {
        log.debug("#edit called!!")

        mav.viewName = VIEW_NAME_EDIT
        mav.model[TITLE_KEY] = TITLE_KEY_EDIT

        log.debug(">> $mav")
        return mav
    }

    @PostMapping("/$BASE_PATH/{id}")
    fun update(@Validated(UpdateGroup::class) @ModelAttribute(UserForm.NAME) userForm: UserForm,
               result: BindingResult,
               redirect: RedirectAttributes,
               sessionsHelper: SessionsHelper,
               mav: ModelAndView): ModelAndView {
        log.debug("#update called!!")

        // メールアドレスの変更が要求されたら独自追加バリデーション
        if(!result.hasFieldErrors("email") && !sessionsHelper.isCurrentUser(userForm.email!!)) {
            userForm.additionalValidate(result)
        }

        log.debug(">> $result")
        if(result.hasErrors()) {
            log.debug(">> $result")
            mav.viewName = VIEW_NAME_EDIT
            mav.model[TITLE_KEY] = TITLE_KEY_EDIT

        } else {
            userForm.save()
            log.debug(">> update succeeded!!")

            mav.viewName = "redirect:/$BASE_PATH/${userForm.id}"
            redirect.addFlashAttribute("flash", mapOf("success" to "$BASE_KEY.edit.updated"))
        }

        log.debug(">> $mav")
        return mav
    }

    @PostMapping("/$BASE_PATH/{id}/delete")
    fun destroy(@ModelAttribute(UserForm.NAME) userForm: UserForm,
                redirect: RedirectAttributes,
                mav: ModelAndView): ModelAndView {
        log.debug("#destroy called!!")

        userForm.delete()

        mav.viewName = "redirect:/$BASE_PATH"
        redirect.addFlashAttribute("flash", mapOf("success" to "$BASE_KEY.delete.success"))
        redirect.addFlashAttribute("flashArg", userForm.name)

        log.debug(">> $mav")
        return mav
    }

    @GetMapping("/$BASE_PATH/{id}/following")
    fun following(@ModelAttribute(UserForm.NAME) userForm: UserForm,
                  @RequestParam("size", required = false) size: Int?,
                  pageable: Pageable,
                  mav: ModelAndView): ModelAndView {
        log.debug("#following called!!")

        mav.viewName = VIEW_NAME_FOLLOWING
        mav.model[TITLE_KEY] = TITLE_KEY_FOLLOWING
        mav.model["users"] = userForm.getFollowing(PageRequest.of(pageable.pageNumber, size ?: DEFAULT_PAGE_SIZE))

        log.debug(">> $mav")
        return mav
    }

    @GetMapping("/$BASE_PATH/{id}/followers")
    fun followers(@ModelAttribute(UserForm.NAME) userForm: UserForm,
                  @RequestParam("size", required = false) size: Int?,
                  pageable: Pageable,
                  mav: ModelAndView): ModelAndView {
        log.debug("#followers called!!")

        mav.viewName = VIEW_NAME_FOLLOWERS
        mav.model[TITLE_KEY] = TITLE_KEY_FOLLOWERS
        mav.model["users"] = userForm.getFollowers(PageRequest.of(pageable.pageNumber, size ?: DEFAULT_PAGE_SIZE))

        log.debug(">> $mav")
        return mav
    }
}
