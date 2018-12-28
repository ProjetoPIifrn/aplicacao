package aplicacao

class Lab {
    String nome;
    String num;

    static hasMany = [supervisorLab:SupervisorLab];


    static constraints = {
        nome(minSize: 4, maxSize: 100, nullable: false ,unique: false )
        num(nullable: false, maxSize: 5 , unique: true)
    }
}
