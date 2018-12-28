package aplicacao

import grails.gorm.services.Service

@Service(AdmLab)
interface AdmLabService {

    AdmLab get(Serializable id)

    List<AdmLab> list(Map args)

    Long count()

    void delete(Serializable id)

    AdmLab save(AdmLab admLab)

}