package aplicacao

import grails.gorm.services.Service

@Service(SupervisorLab)
interface SupervisorLabService {

    SupervisorLab get(Serializable id)

    List<SupervisorLab> list(Map args)

    Long count()

    void delete(Serializable id)

    SupervisorLab save(SupervisorLab supervisorLab)

}