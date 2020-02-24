package com.example.sbtutorial.model

abstract class BaseForm<E: BaseEntity, S: IService<E>>(protected var entity: E?, protected val service: S): IForm<E> {

    protected abstract fun populate(): E

    override fun save() { service.save(populate()) }

    override fun delete() { if(entity != null) service.delete(entity!!) }
}