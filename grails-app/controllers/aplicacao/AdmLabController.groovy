package aplicacao

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class AdmLabController {

    AdmLabService admLabService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        def lista = admLabService.list()
        render(view: "/admLab/index", model: [adms:lista])
    }

    def show(Long id) {
        respond admLabService.get(id)
    }

    def create() {
        respond new AdmLab(params)
    }

    def save(AdmLab admLab) {
        if (admLab == null) {
            notFound()
            return
        }

        try {
            admLabService.save(admLab)
        } catch (ValidationException e) {
            respond admLab.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'admLab.label', default: 'AdmLab'), admLab.id])
                redirect admLab
            }
            '*' { respond admLab, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond admLabService.get(id)
    }

    def update(AdmLab admLab) {
        if (admLab == null) {
            notFound()
            return
        }

        try {
            admLabService.save(admLab)
        } catch (ValidationException e) {
            respond admLab.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'admLab.label', default: 'AdmLab'), admLab.id])
                redirect admLab
            }
            '*'{ respond admLab, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        admLabService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'admLab.label', default: 'AdmLab'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'admLab.label', default: 'AdmLab'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
