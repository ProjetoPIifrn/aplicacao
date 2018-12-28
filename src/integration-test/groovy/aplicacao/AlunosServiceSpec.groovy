package aplicacao

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class AlunosServiceSpec extends Specification {

    AlunosService alunosService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new Alunos(...).save(flush: true, failOnError: true)
        //new Alunos(...).save(flush: true, failOnError: true)
        //Alunos alunos = new Alunos(...).save(flush: true, failOnError: true)
        //new Alunos(...).save(flush: true, failOnError: true)
        //new Alunos(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //alunos.id
    }

    void "test get"() {
        setupData()

        expect:
        alunosService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<Alunos> alunosList = alunosService.list(max: 2, offset: 2)

        then:
        alunosList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        alunosService.count() == 5
    }

    void "test delete"() {
        Long alunosId = setupData()

        expect:
        alunosService.count() == 5

        when:
        alunosService.delete(alunosId)
        sessionFactory.currentSession.flush()

        then:
        alunosService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        Alunos alunos = new Alunos()
        alunosService.save(alunos)

        then:
        alunos.id != null
    }
}
