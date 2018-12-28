package aplicacao

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class LabController {

    LabService labService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        def lista = labService.list()
        render(view: "/lab/index", model: [labo:lista])
    }

    def show(Long id) {
        respond labService.get(id)
    }

    def create() {
        respond new Lab(params)
    }

    def save(Lab lab) {
        if (lab == null) {
            notFound()
            return
        }

        try {
            labService.save(lab)
        } catch (ValidationException e) {
            respond lab.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'lab.label', default: 'Lab'), lab.id])
                redirect lab
            }
            '*' { respond lab, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond labService.get(id)
    }

    def update(Lab lab) {
        if (lab == null) {
            notFound()
            return
        }

        try {
            labService.save(lab)
        } catch (ValidationException e) {
            respond lab.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'lab.label', default: 'Lab'), lab.id])
                redirect lab
            }
            '*'{ respond lab, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        labService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'lab.label', default: 'Lab'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'lab.label', default: 'Lab'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
