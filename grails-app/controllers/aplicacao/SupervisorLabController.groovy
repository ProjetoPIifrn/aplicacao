package aplicacao

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class SupervisorLabController {

    SupervisorLabService supervisorLabService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        def lista = supervisorLabService.list()
        render(view: "/supervisorLab/index", model: [sup:lista])
    }

    def show(Long id) {
        respond supervisorLabService.get(id)
    }

    def create() {
        respond new SupervisorLab(params)
    }

    def save(SupervisorLab supervisorLab) {
        if (supervisorLab == null) {
            notFound()
            return
        }

        try {
            supervisorLabService.save(supervisorLab)
        } catch (ValidationException e) {
            respond supervisorLab.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'supervisorLab.label', default: 'SupervisorLab'), supervisorLab.id])
                redirect supervisorLab
            }
            '*' { respond supervisorLab, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond supervisorLabService.get(id)
    }

    def update(SupervisorLab supervisorLab) {
        if (supervisorLab == null) {
            notFound()
            return
        }

        try {
            supervisorLabService.save(supervisorLab)
        } catch (ValidationException e) {
            respond supervisorLab.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'supervisorLab.label', default: 'SupervisorLab'), supervisorLab.id])
                redirect supervisorLab
            }
            '*'{ respond supervisorLab, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        supervisorLabService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'supervisorLab.label', default: 'SupervisorLab'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'supervisorLab.label', default: 'SupervisorLab'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
