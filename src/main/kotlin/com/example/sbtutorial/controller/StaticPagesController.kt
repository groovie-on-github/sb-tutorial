package com.example.sbtutorial.controller

import com.example.sbtutorial.helper.SessionsHelper
import com.example.sbtutorial.model.micropost.MicropostForm
import com.example.sbtutorial.model.micropost.MicropostsService
import com.example.sbtutorial.model.picture.PicturesService
import com.example.sbtutorial.model.user.UserForm
import com.example.sbtutorial.model.user.UsersService
import org.apache.commons.logging.LogFactory
import org.springframework.data.domain.PageRequest
import org.springframework.data.domain.Pageable
import org.springframework.stereotype.Controller
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RequestParam
import org.springframework.web.servlet.ModelAndView

@Controller
class StaticPagesController(private val sh: SessionsHelper, private val us: UsersService,
                            private val ms: MicropostsService, private val ps: PicturesService)
    : BaseController() {

    companion object {
        const val BASE_PATH = "static_pages"

        private const val BASE_KEY = "view"
        private const val TITLE_KEY_HELP = "${BASE_KEY}.help.title"
        private const val TITLE_KEY_ABOUT = "${BASE_KEY}.about.title"
        private const val TITLE_KEY_CONTACT = "${BASE_KEY}.contact.title"

        private const val VIEW_NAME_HOME = "$BASE_PATH/home"
        private const val VIEW_NAME_HELP = "$BASE_PATH/help"
        private const val VIEW_NAME_ABOUT = "$BASE_PATH/about"
        private const val VIEW_NAME_CONTACT = "$BASE_PATH/contact"
    }

    private val log = LogFactory.getLog(StaticPagesController::class.java)


    @GetMapping("/")
    fun home(@RequestParam("size", required = false) size: Int?,
             pageable: Pageable,
             mav: ModelAndView): ModelAndView {
        log.debug("#home called!!")

        if(sh.loggedIn) {
            val userForm = UserForm.from(sh.currentId!!, us, ms)
            mav.model[UserForm.NAME] = userForm
            mav.model[UserForm.FEED] = userForm.getFeed(PageRequest.of(pageable.pageNumber, size ?: DEFAULT_PAGE_SIZE))
            mav.model[MicropostForm.NAME] = MicropostForm(ms, ps)
        }

        mav.viewName = VIEW_NAME_HOME

        log.debug(">> $mav")
        return mav
    }

    @GetMapping("/help")
    fun help(mav: ModelAndView): ModelAndView {
        log.debug("#help called!!")

        mav.viewName = VIEW_NAME_HELP
        mav.model[TITLE_KEY] = TITLE_KEY_HELP

        log.debug(">> $mav")
        return mav
    }

    @GetMapping("/about")
    fun about(mav: ModelAndView): ModelAndView {
        log.debug("#about called!!")

        mav.viewName = VIEW_NAME_ABOUT
        mav.model[TITLE_KEY] = TITLE_KEY_ABOUT

        log.debug(">> $mav")
        return mav
    }

    @GetMapping("/contact")
    fun contact(mav: ModelAndView): ModelAndView {
        log.debug("#contact called!!")

        mav.viewName = VIEW_NAME_CONTACT
        mav.model[TITLE_KEY] = TITLE_KEY_CONTACT

        log.debug(">> $mav")
        return mav
    }
}
