package aplicacao

class Alunos {
    String nome;
    String matricula;
    String turma;
    String turno;
    Date data = new Date();
    Lab lab;

    static constraints = {
        nome(maxSize: 100, nullable: false ,unique: false )
        matricula(nullable: false, maxSize: 14, unique: true)
        turma(nullable: false, maxSize: 15, unique: false)
        turno(inList:["Manhã","Tarde","Noite"])
    }
}
