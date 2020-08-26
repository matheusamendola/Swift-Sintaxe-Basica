import UIKit

//Operadores Logicos

//Operador E / AND (&&)
var boughtBanana: Bool = true
var boughtTomato: Bool = true
var boughtApple: Bool = false

var isHappy = boughtBanana && boughtTomato && boughtApple

true && true
true && false
false && false
false && true

//Operador OU / OR (||)

var likesMeat = false
var likesBeer = true

var canInviteBarbecue = likesBeer || likesMeat

true || false
true || true
false || true
false || false

var grade1 = 8.5
var grade2 = 7.0
let result = (grade1 + grade2) / 2

//Operador de negacao (NOT)
var knowSwift = false
var enrollSwiftCourse = !knowSwift

//Operador Ternario

var grade = 7.95
var gradeResult = (grade >= 7.0) ? "Aprovado" : "Reprovado"

let number = 11
let type = (number % 2 == 0) ? "Par" : "Impar"
