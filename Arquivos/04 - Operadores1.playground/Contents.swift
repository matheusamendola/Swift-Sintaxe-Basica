import UIKit

//Operadores Binarios

//Operador de Atribuicao (=)
let gravity = 9.81
var (name, age) = ("Eric", 39) //Duas Variaveis

//Aritméticos Soma (+), Subtracao (-), Multiplicacao (*), Divisao (/), Modulo(%)

//Soma
var age1 = 45
var age2 = 26
let sum = age1 + age2

//Subtracao
let minus = age1 - age2

//Multiplicacao
let multiply = age1 * age2

//Divisao
let division = age1 / age2

//Modulo (resto da divisao)
let toys = 35
let kids = 6
let modulus = toys % kids

//Nao se consegue operar em 2 tipos de variaveis (Ex. Int, Double)
let time1 = 12
let time2 = 14.78
//let resultTimes = time1 + time2

//Operadores Compostos (Atribui e opera ao mesmo tempo)
//+=, *=, /=, %=
age1 = age1 + age2
age1 += age2

var products = 125
var lastBuy = 22
products -= lastBuy

//Comparacao (Faz Comparacao emtre valores e retorna um Bool)

//Maior que (>)
let grade1 = 7.5
let grade2 = 9.8
let betterThatFriend = grade1 > grade2

//Menor que (<)
let grade = 8.9
let minimumGrade = 7.0
let reproved = grade < minimumGrade

//Maior ou igual a: >=
//Menor ou igual a: <=

let approved = grade >= minimumGrade

//Igualdade (==)

let teacherName = "Batata"
let studentName = "batata"
let sameNames = teacherName == studentName
let sameNames2 = teacherName.lowercased() == studentName.lowercased() //retorna tudo minusculo

//Desigualdade (!=)
let differentNames = teacherName != studentName

