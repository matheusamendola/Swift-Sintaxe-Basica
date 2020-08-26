import UIKit
import Foundation

//Unarios -> Apenas 1 operando
//prefix ou posfix

//Binários -> Operam em 2 operandos
//infix

//Operadores Personalizados

//Unario prefix

prefix operator <|
prefix func <| (rhs: [Int]) -> [Int]{
    //Logica do operador
    let result = rhs.map({$0 - 1})
    return result
}

let ages = [9, 12, 45, 55, 44]
let lestYearAge = <|ages

//Unario postfix
//Fatorial
postfix operator >|
postfix func >| (lhs: Int) -> Int {
    //Logica do operador
    var result = 1
    if lhs < 2 {
        return result
    }
    for i in 2...lhs{
        result *= i
    }
    return result
}

5>|
//Range Invertido
infix operator ---
func --- (lhs: Int, rhs: Int) -> [Int]{
    return Array(rhs...lhs).reversed()
}
30---12


infix operator >-<
func >-< (total: Int, universe: Int) -> [Int]{
    var result: [Int] = []
    while result.count < total {
        let randomNumber = Int(arc4random_uniform(UInt32(universe))+1)
        if !result.contains(randomNumber){
            result.append(randomNumber)
        }
    }
    return result.sorted()
}

print(6>-<60)
print(5>-<80)
