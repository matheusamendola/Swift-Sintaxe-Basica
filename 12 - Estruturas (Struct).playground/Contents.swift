import UIKit

//Estruturas (Structs)

struct Person{
    //Propriedades
    var name: String? //Opcional
    var age: Int = 0
    
    //Construtor Personalizado - Override
    init(name: String) {
        self.name = name
    }
    
    //Funcoes - Metodos
    func sayHello(){
        print("Olá")
    }

    mutating func incrementAge(){
        age += 1
    }
    
}

//Construtor - Inicializacao
var person = Person(name: "Matheus")

//Chamar Funcao

person.sayHello()

//Modificar propriedade
person.name = "Joao"
person.age = 12

person.incrementAge()

//Computed Properties (Propriedades Computadas)

struct Temperature{
    var celsius: Double
    var fahrenheit: Double {
        return celsius * 1.8 + 32 //Propriedaddes computadas
    }
}
var temperature = Temperature(celsius: 25)
print(temperature.celsius)
print(temperature.fahrenheit)

