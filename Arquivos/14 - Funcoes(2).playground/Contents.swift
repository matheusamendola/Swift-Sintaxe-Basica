import UIKit

//Funcoes (2)

//First Class Citizen - Suporta todos tipos de operacaoes

//Passar funcao a funcao

func sum(_ a: Int, _ b: Int) -> Int{
    return a + b
}

func subtract(_ a: Int, _ b: Int) -> Int{
    return a - b
}

func multiply(_ a: Int, _ b: Int) -> Int{
    return a * b
}

//Tipo da Funcao : (Int, Int) -> Int
func divide(_ a: Int, _ b: Int) -> Int{
    return a / b
}

//Criar apelido para tipo
typealias Op = (Int, Int) -> Int

//Recebe funcao e retorna inteiro
func applyOperation(_ a: Int, _ b: Int, operation: Op) -> Int{
    return operation(a, b)
}

let result = applyOperation(10, 20, operation: sum)

//Funcao que retorna outra como parametro
func getOperation (_ operation: String) ->  Op {
    switch operation {
        case "soma":
            return sum
        case "subtracao":
            return subtract
        case "multiplicacao":
            return multiply
        default:
            return divide
    }
}

var operation = getOperation("subtracao")
operation(30, 15)
