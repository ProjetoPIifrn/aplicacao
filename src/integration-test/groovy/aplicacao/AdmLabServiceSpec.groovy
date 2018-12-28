package aplicacao

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class AdmLabServiceSpec extends Specification {

    AdmLabService admLabService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new AdmLab(...).save(flush: true, failOnError: true)
        //new AdmLab(...).save(flush: true, failOnError: true)
        //AdmLab admLab = new AdmLab(...).save(flush: true, failOnError: true)
        //new AdmLab(...).save(flush: true, failOnError: true)
        //new AdmLab(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //admLab.id
    }

    void "test get"() {
        setupData()

        expect:
        admLabService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<AdmLab> admLabList = admLabService.list(max: 2, offset: 2)

        then:
        admLabList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        admLabService.count() == 5
    }

    void "test delete"() {
        Long admLabId = setupData()

        expect:
        admLabService.count() == 5

        when:
        admLabService.delete(admLabId)
        sessionFactory.currentSession.flush()

        then:
        admLabService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        AdmLab admLab = new AdmLab()
        admLabService.save(admLab)

        then:
        admLab.id != null
    }
}
