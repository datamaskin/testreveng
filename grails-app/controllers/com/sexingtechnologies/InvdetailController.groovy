package com.sexingtechnologies

class InvdetailController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [invdetailInstanceList: Invdetail.list(params), invdetailInstanceTotal: Invdetail.count()]
    }

    def create = {
        def invdetailInstance = new Invdetail()
        invdetailInstance.properties = params
        return [invdetailInstance: invdetailInstance]
    }

    def save = {
        def invdetailInstance = new Invdetail(params)
        if (invdetailInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'invdetail.label', default: 'Invdetail'), invdetailInstance.id])}"
            redirect(action: "show", id: invdetailInstance.id)
        }
        else {
            render(view: "create", model: [invdetailInstance: invdetailInstance])
        }
    }

    def show = {
        def invdetailInstance = Invdetail.get(params.id)
        if (!invdetailInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'invdetail.label', default: 'Invdetail'), params.id])}"
            redirect(action: "list")
        }
        else {
            [invdetailInstance: invdetailInstance]
        }
    }

    def edit = {
        def invdetailInstance = Invdetail.get(params.id)
        if (!invdetailInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'invdetail.label', default: 'Invdetail'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [invdetailInstance: invdetailInstance]
        }
    }

    def update = {
        def invdetailInstance = Invdetail.get(params.id)
        if (invdetailInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (invdetailInstance.version > version) {
                    
                    invdetailInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'invdetail.label', default: 'Invdetail')] as Object[], "Another user has updated this Invdetail while you were editing")
                    render(view: "edit", model: [invdetailInstance: invdetailInstance])
                    return
                }
            }
            invdetailInstance.properties = params
            if (!invdetailInstance.hasErrors() && invdetailInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'invdetail.label', default: 'Invdetail'), invdetailInstance.id])}"
                redirect(action: "show", id: invdetailInstance.id)
            }
            else {
                render(view: "edit", model: [invdetailInstance: invdetailInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'invdetail.label', default: 'Invdetail'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def invdetailInstance = Invdetail.get(params.id)
        if (invdetailInstance) {
            try {
                invdetailInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'invdetail.label', default: 'Invdetail'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'invdetail.label', default: 'Invdetail'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'invdetail.label', default: 'Invdetail'), params.id])}"
            redirect(action: "list")
        }
    }
}
