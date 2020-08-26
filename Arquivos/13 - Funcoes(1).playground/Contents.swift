import UIKit

//Funcoes

/*
func nome(parametro: Tipo) -> TipoDeRetorno{
    Codigos
    return Tipo de Retorno
}
 */

//Nao recebe parametro nem retorna

func sayHello(){ //Void
    print("Hello")
}
//Executar func
sayHello()

func say(message: String){
    print(message)
}

say(message: "Bom Dia Caralho")

func sayTo(message: String, to: String) -> String{
    return message + " " + to
}

//Pegar retorno
let sentence = sayTo(message: "Olá", to: "Maria")
print(sentence)

//Sum sem pedir nome do arg
func sum(_ a: Int, b: Int) -> Int{
    return a + b
}

print(sum(10,b: 20))

//Definir nome externo
func multiply(_ number1: Int,by number2: Int) -> Int{
    return number1 * number2
}

multiply(20, by: 10)

//Somar com varios valores (...)
func sumb(_ initialValue: Int, withValues values: Int...) -> Int{
    var result = initialValue
    
    for value in values{
        result += value
    }
    
    return result
}

print(sumb(10, withValues: 5, 4, 6, 12))

//Retornar Varios tipos  (tuplas)

import Foundation

//Criando Constantes
let studentData = "Matheus Amendola:20"

//Extraindo informacoes
func getStudentInfo (_ data: String) -> (name: String, age: Int){
    let info = data.components(separatedBy: ":") //Pega informacoes separadas por ":"
    let studentName = info[0]
    let studentAge = Int(info[1]) //Converteu string em int (optional)
    return (studentName, studentAge!)
}

let student = getStudentInfo(studentData)
print(student.name)
print(student.age)



