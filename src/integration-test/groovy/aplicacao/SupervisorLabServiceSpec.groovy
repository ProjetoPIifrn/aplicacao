package aplicacao

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class SupervisorLabServiceSpec extends Specification {

    SupervisorLabService supervisorLabService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new SupervisorLab(...).save(flush: true, failOnError: true)
        //new SupervisorLab(...).save(flush: true, failOnError: true)
        //SupervisorLab supervisorLab = new SupervisorLab(...).save(flush: true, failOnError: true)
        //new SupervisorLab(...).save(flush: true, failOnError: true)
        //new SupervisorLab(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //supervisorLab.id
    }

    void "test get"() {
        setupData()

        expect:
        supervisorLabService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<SupervisorLab> supervisorLabList = supervisorLabService.list(max: 2, offset: 2)

        then:
        supervisorLabList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        supervisorLabService.count() == 5
    }

    void "test delete"() {
        Long supervisorLabId = setupData()

        expect:
        supervisorLabService.count() == 5

        when:
        supervisorLabService.delete(supervisorLabId)
        sessionFactory.currentSession.flush()

        then:
        supervisorLabService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        SupervisorLab supervisorLab = new SupervisorLab()
        supervisorLabService.save(supervisorLab)

        then:
        supervisorLab.id != null
    }
}
