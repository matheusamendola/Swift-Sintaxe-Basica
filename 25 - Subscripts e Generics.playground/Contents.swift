import UIKit

//Subscripts e Generics

class Car {
    var licensePlate: String
    
    //Devolver
    subscript(index: Int) -> String{
        get{
            let character = Array(licensePlate)[index]
            return String(character)
            
        }
        set{
            var array = Array(licensePlate)
            array[index] = Character(newValue) // Valor q foi passado ex car[7] = "4"
            self.licensePlate = String(array)
        }
    }
    
    init(licensePlate: String) {
        self.licensePlate = licensePlate
    }
}

let car = Car(licensePlate: "EXP-8722")

car[7]
car[7] = "4"

//Generics
//Tip bem amplo
//inout referencia
//<T> criando tipo generico
func swapValues<T>(_ a: inout T, _ b: inout T){
    let tempA = a
    a = b
    b = tempA
}

var a = 10.0
var b = 20.0

swapValues(&a, &b)
//swapInts(&a, &b)
