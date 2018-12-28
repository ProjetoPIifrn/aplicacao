package aplicacao

import grails.gorm.services.Service

@Service(Lab)
interface LabService {

    Lab get(Serializable id)

    List<Lab> list(Map args)

    Long count()

    void delete(Serializable id)

    Lab save(Lab lab)

}