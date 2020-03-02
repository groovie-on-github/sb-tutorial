package com.example.sbtutorial.model

import org.apache.commons.logging.LogFactory
import org.springframework.validation.BindingResult

abstract class BaseForm<E: BaseEntity, S: IService<E>>(protected var entity: E?, protected val service: S): IForm<E> {

    private val log = LogFactory.getLog(BaseForm::class.java)

    private val validations: MutableMap<String, (BindingResult) -> Boolean> = mutableMapOf()

    protected fun addValidation(description: String, validation: (BindingResult) -> Boolean) =
        validations.put(description, validation)

    fun additionalValidate(result: BindingResult): Boolean {
        return validations.toList().fold(true) { acc, (description, validate) ->
            validate(result).also { log.debug(">> $description => $it") } && acc
        }
    }

    protected abstract fun populate(): E

    override fun save() { service.save(populate()) }

    override fun delete() { if(entity != null) service.delete(entity!!) }
}