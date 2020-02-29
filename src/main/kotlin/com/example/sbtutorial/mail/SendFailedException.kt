package com.example.sbtutorial.mail

import java.lang.Exception
import javax.mail.internet.MimeMessage

class SendFailedException(val msg: String, val mail: MimeMessage,
                          val text: String, val html: String, val e: Exception): Exception(msg, e)
