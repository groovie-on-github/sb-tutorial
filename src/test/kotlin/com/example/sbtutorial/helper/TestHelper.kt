package com.example.sbtutorial.helper

import com.gargoylesoftware.htmlunit.StringWebResponse
import com.gargoylesoftware.htmlunit.WebClient
import com.gargoylesoftware.htmlunit.html.HtmlPage
import java.net.URL

object TestHelper {
    fun parseHtml(html: String, client: WebClient): HtmlPage {

        return client.pageCreator.htmlParser.parseHtml(StringWebResponse(html,
            URL("http://localhost")), client.currentWindow)
    }
}
