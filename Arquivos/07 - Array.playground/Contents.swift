import UIKit

var names = ["Fulano", "Ciclano", "Beltrano"]
var namesB: [String] = ["Fulano", "Ciclano", "Beltrano"]

var lotteryNumbers: [Int] = []
var phoneNumbers: [String]?

var ages:[UInt8] = [9, 7, 23, 34, 55] //IUnt8
var guests = ["Joao", "Paulo", "Alexandre", "Patricia"]

print(guests.count) //Quantidade de itens na array

print(guests.isEmpty) //Verifica se está vazio

let secondGuest = guests[1]

guests[0] = "Batatao"
print(guests)

//Remover de 0..1 e adiciona

guests[0...1] = ["Rafael", "Felipe","Ana", "Julia"]
print(guests)

//Pega um optional o primeiro elemento

if let first = guests.first{
    print(first)
}
//Pega Ultimo

if let last = guests.last{
    print(last)
}

//Adicionar elementos

guests += ["Luiz", "hellen", "Sandro"] //Add no final array
guests.append("Edina") //Somente 1 elemento e add no final

guests.insert("Romeu", at: 2) //Adiciona string no local x
print(guests)

//Remover Elementos

guests.removeFirst() //Remove primeiro
guests.removeLast()  //Remove ultimo
guests.remove(at: 2) //Remove em na posicao x
//guests.removeAll() //Remove tudo

//Verificar elemento na array

if guests.contains("Felipe"){
    print("Felipe foi convidado")
}
