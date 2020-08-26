import UIKit

//Clousures
//É um pedaco auto contido de codigos e funcionalidades que podem ser repassados e utilizados em seu codigo

/*
 {(parametro: String) -> String in
    bloco de codigo
    ...
 
    return String
 */

func sum(_ a: Int, _ b: Int) -> Int{
    return a + b
}

func subtract(_ a: Int, _ b: Int) -> Int{
    return a - b
}

func calculate(_ a: Int, _ b: Int, operation: (Int, Int) -> Int) -> Int{
    return operation(a, b)
}

calculate(10, 20, operation: sum)

//Em vez de passar uma funcao voce cria uma dentro
calculate(10, 20, operation: {(a: Int, b: Int) -> Int in
    return a * b
})

//Forma simplificada
calculate(10, 20, operation: {(a, b) -> Int in
    return a * b
})

//Mais simplificado ainda
calculate(10, 20, operation: {a, b in
    return a * b
})

//Mais mais simplificado ainda (Indice do arg)
calculate(10, 20, operation: {
    return $0 * $1
})

//mais mais mais simplificado ainda
calculate(10, 20, operation: {$0 * $1})

//mais mais mais mais simplificado ainda
calculate(10, 20, operation: *)

//Ou
calculate(10, 20) {$0 * $1}

var names = [
    "     Alessandra   ",
    " Joao   ",
    "  jamelao  ",
    "   luiz  "
]

import Foundation

//Map - mapear cada elemento e retorna mapeado
//$0 cada um dos elem
let correctedNames = names.map({$0.trimmingCharacters(in: .whitespaces)}) //Remove espaco
print(correctedNames)

let uppercasedNames = correctedNames.map({$0.uppercased()}) //Coloca maiusculo
print(uppercasedNames)

let amendola = correctedNames.map({$0 + " Amendola"}) //Coloca maiusculo
print(amendola)

//Filter (Filtrar)
let newNames = correctedNames.filter({$0.count < 7})
print(newNames)

//Reduce junta tudo e conta os char
let sumLetters = correctedNames.reduce(0, {$0 + $1.count})
print(sumLetters)
