package aplicacao

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class AlunosController {

    AlunosService alunosService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        def lista = alunosService.list()
        render(view: "/alunos/index", model: [alu:lista])
    }

    def show(Long id) {
        respond alunosService.get(id)
    }

    def create() {
        respond new Alunos(params)
    }

    def save(Alunos alunos) {
        if (alunos == null) {
            notFound()
            return
        }

        try {
            alunosService.save(alunos)
        } catch (ValidationException e) {
            respond alunos.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'alunos.label', default: 'Alunos'), alunos.id])
                redirect alunos
            }
            '*' { respond alunos, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond alunosService.get(id)
    }

    def update(Alunos alunos) {
        if (alunos == null) {
            notFound()
            return
        }

        try {
            alunosService.save(alunos)
        } catch (ValidationException e) {
            respond alunos.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'alunos.label', default: 'Alunos'), alunos.id])
                redirect alunos
            }
            '*'{ respond alunos, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        alunosService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'alunos.label', default: 'Alunos'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'alunos.label', default: 'Alunos'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
