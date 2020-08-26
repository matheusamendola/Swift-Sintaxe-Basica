import UIKit

/*
 Heranca - Possibilidade de um objeto herdar as caracteristicas de outro objeto, ou seja, suas propriedades e metodos
 
 Polimorfismo - Capacidade de um objeto de modificar os comportamentos herdados do pai, alterando suas propriedades
 
 Encapsulamento - Tecnica que permite que detalhes internos do funcionamento de uma classe permanecam inacessiveis a outros objetos
 */

//Classe

class Person{
    //Variaveis
    var name: String
    var gender: Character
    var age: Int = 0
    
    //Metodo Construtor
    init(name: String, gender: Character) {
        self.name = name
        self.gender = gender
    }
    
    //Funcoes
    func speak(sentence: String){
        if age < 3{
            print("gugu dada")
        } else{
        print(sentence)
        }
    }
    
    func introduce() {
        speak(sentence: "Olá meu nome é \(name)")
    }
}

class job{
    var title: String
    var salary: Double
    
    //Metodo Construtor
    init(title: String, salary: Double) {
        self.title = title
        self.salary = salary
    }
}

//Instanciar Classe
let joao = Person(name: "Joao", gender: "M")
let clara = Person(name: "Clara", gender: "F")
let fabio = Person(name: "Fabio", gender: "M")

//Definir variaveis de uma class
joao.age = 32
clara.age = 23
fabio.age = 2

//Chamar funcao de uma classe
joao.introduce()
clara.introduce()
fabio.introduce()

class Vehicle{
    var speed: Double = 0{
        //Observador de propriedade
        didSet{
            speed = min(speed, maxSpeed)
        }
    }
    var model: String
    
    //propriedade de class
    static let speedUnit = "Km/h"
    
    //Variavel computada
    var maxSpeed: Double {
        return 250
    }
    var speedInMilesPerHour: Double{
        //Obter
        get{
            return speed / 1.60934
        }
        //Definir
        set{
            speed = newValue * 1.60934
        }
    }
    
    init(model: String) {
        self.model = model
    }
    
    func descript() -> String{
        return "Veiculo: \(model), velocidade atual \(speed)"
    }
    
    //Metodo de classe - nao precisa istancial
    class func alert() -> String{
        return "Se beber nao dirija!"
    }
}

print(Vehicle.alert())
print(Vehicle.speedUnit)

let car = Vehicle(model: "Fiesta")
car.speed = 500
//Protegido pelo didset
print(car.speed)

