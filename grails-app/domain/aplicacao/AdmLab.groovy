package aplicacao

class AdmLab {
    String nome;
    String matricula;
    String setor;
    String senha;


     static constraints = {
        nome(minSize: 4, maxSize: 100, nullable: false ,unique: false )
        matricula(minSize: 5,nullable: false, maxSize: 20, unique: true)
        senha(minSize: 8,maxSize: 30, nullable: false ,unique: false)
        setor(nullable: false, maxSize: 15, unique: false)
    }
}
