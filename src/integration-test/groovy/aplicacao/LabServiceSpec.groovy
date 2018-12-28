package aplicacao

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class LabServiceSpec extends Specification {

    LabService labService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new Lab(...).save(flush: true, failOnError: true)
        //new Lab(...).save(flush: true, failOnError: true)
        //Lab lab = new Lab(...).save(flush: true, failOnError: true)
        //new Lab(...).save(flush: true, failOnError: true)
        //new Lab(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //lab.id
    }

    void "test get"() {
        setupData()

        expect:
        labService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<Lab> labList = labService.list(max: 2, offset: 2)

        then:
        labList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        labService.count() == 5
    }

    void "test delete"() {
        Long labId = setupData()

        expect:
        labService.count() == 5

        when:
        labService.delete(labId)
        sessionFactory.currentSession.flush()

        then:
        labService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        Lab lab = new Lab()
        labService.save(lab)

        then:
        lab.id != null
    }
}
