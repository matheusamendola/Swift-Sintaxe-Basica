import UIKit

//For In

//Day Costante e 1...30 range
for day in 1...30{
    print("Estou no dia \(day) de Dezembro")
}

//Sem Constante
for _ in 1...5{
    print("Tome agua")
}

//Percorrer Array
let students = [
    "Matheus",
    "Luiz",
    "Arthur",
    "Rafael",
]

for student in students{
    print("O aluno \(student) veio na aula")
}

//Imprimir cada letra de uma string
let name = "Matheus Amendola do canto"

for letter in name{
    print(letter)
}

//Imprimir cada letra e indice (Tupla)
for (index, letter) in name.enumerated(){
    print(index, letter)
}

//percorrer dicionario
let people = [
    "Paulo": 24,
    "Renata": 14,
    "Eric": 34
]

for person in people{
    print(person.key, person.value)
}

//While (continua Enquanto for verdadeira)

var life = 10

while life > 0 {
    print("Jogador esta com \(life) vidas")
    life = life - 1
}

import Foundation

var megaSena: [Int] = []

while megaSena.count < 6 {
    let number = Int(arc4random_uniform(60) + 1) //Numero entre 0...60
    if !megaSena.contains(number){
        megaSena.append(number) //Adiciona no Array
    }
}
print(megaSena)
print(megaSena.sorted()) //Arruma a array

//Repeat - While

var tries = 0
var diceNumber = 0

repeat{
    tries += 1
    diceNumber = Int(arc4random_uniform(6) + 1)
} while diceNumber != 6

print("Tirou 6 apos: \(tries) tentativas")


let grades = [10.0, 7.8, 5.8, 13.0, -1.0, 14.0, 0.0]
for grade in grades {
    print(grade)
    if grade < 0.0 || grade > 10.0{
        print("Nota invalida")
        break
    }
}
