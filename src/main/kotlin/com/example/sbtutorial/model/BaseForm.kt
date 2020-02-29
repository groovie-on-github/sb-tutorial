package com.example.sbtutorial.model

import org.apache.commons.logging.LogFactory
import org.springframework.validation.BindingResult

abstract class BaseForm<E: BaseEntity, S: IService<E>>(protected var entity: E?, protected val service: S): IForm<E> {

    private val log = LogFactory.getLog(BaseForm::class.java)

    private val validations: MutableMap<String, (BindingResult) -> Boolean> = mutableMapOf()

    protected fun addValidation(description: String, validation: (BindingResult) -> Boolean) =
        validations.put(description, validation)

    fun additionalValidate(result: BindingResult): Boolean {
        var returnVal = true
        validations.forEach { (description, validate) ->
            returnVal = validate(result).also { log.debug(">> $description => $it") } && returnVal
        }
        return returnVal
    }

    protected abstract fun populate(): E

    override fun save() { service.save(populate()) }

    override fun delete() { if(entity != null) service.delete(entity!!) }
}