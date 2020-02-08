package com.example.sbtutorial.helper

import org.assertj.core.api.Assertions.*
import org.junit.jupiter.api.Test

class TitleHelperTests {

    @Test
    fun `full title helper`() {
        assertThat(TitleHelper.getFullTitle(null))
                .isEqualTo("Spring Boot Sample App")
        assertThat(TitleHelper.getFullTitle("Help"))
                .isEqualTo("Help | Spring Boot Sample App")
    }
}
