package aplicacao

import grails.gorm.services.Service

@Service(Alunos)
interface AlunosService {

    Alunos get(Serializable id)

    List<Alunos> list(Map args)

    Long count()

    void delete(Serializable id)

    Alunos save(Alunos alunos)

}