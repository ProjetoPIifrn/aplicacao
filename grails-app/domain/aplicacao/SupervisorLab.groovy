package aplicacao

class SupervisorLab {
    String nome;
    String matricula;
    String turma;
    String senha;
    Lab lab;

    static constraints = {
        nome(minSize: 4, maxSize: 100, nullable: false ,unique: false )
        matricula(nullable: false, maxSize: 14, unique: true)
        senha(minSize: 8,maxSize: 30, nullable: false ,unique: false)
        turma(nullable: false, maxSize: 15, unique: false)

    }
}

