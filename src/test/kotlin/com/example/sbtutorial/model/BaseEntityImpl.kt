package com.example.sbtutorial.model

import javax.persistence.Entity

@Entity
class BaseEntityImpl(name: String): BaseEntity() {

    var name = name
}
