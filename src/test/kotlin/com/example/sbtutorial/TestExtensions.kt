package com.example.sbtutorial

import org.springframework.mock.web.MockHttpServletRequest
import org.springframework.mock.web.MockHttpSession
import org.springframework.test.web.servlet.MvcResult
import java.net.URL

fun String?.toURL(): URL? = if(this == null) null else URL(this)

val MockHttpServletRequest.mockSession: MockHttpSession
    get() = this.session as MockHttpSession

val MvcResult.mockSession: MockHttpSession
    get() = this.request.session as MockHttpSession
