import UIKit

//Tipos - Int, Float, Double, Character, String, Bool

//Bool (Booleanos)

var isFirstTime: Bool = true
var likesFruits = false //Nao precisa atribuir tipo se receber algo

//Int (Inteiros)
var age: Int = 25
var temperature = -12 //Nao precisa atribuir tipo se receber algo

//UInt (Valores inteiros nao negativos)
var idade: UInt = 40

//Float (Ocupa 32 Bits)
var dolar: Float = 4.6

//Double (Ocupa 64 Bits)
var crazyNumber = 1000000.238768 //Atribui automaticamente Double

//Character (Apenas 1 Character)
var gender: Character = "M"
var enter: Character = "\n"
var aspas: Character = "\""

//String (Conjunto de Caracteres)
var newGender = "M"
var studentName = "Matheus Amendola"
let firstName = "Joao"
let lastName = "Batata"

let fullName = firstName + " " + lastName // Concatenar
let fullName2 = "\(firstName) \(lastName)" //Interpolar

print("A variavel fullname tem \(fullName.count) caracteres") //Contar letras string

//String com varias linhas
let text = """
Olá espero que esteja bem
pao de batata
teste
"""
