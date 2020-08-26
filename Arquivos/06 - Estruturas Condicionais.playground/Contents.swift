import UIKit

//If - Else
var hasHeadache: Bool = false
var humor: String = ""

if hasHeadache{
    humor = "Puto da vida"
}
else{
    humor = "top da vida"
}

let number = 11
if number % 2 == 0{
    print("Numero par")
}
else{
    print("Numero impar")
}

var temperature = 18
var climate = ""

if temperature <= 0{
    climate = "Muito Frio"
} else if temperature < 14{
    climate = "Frio"
} else if temperature < 21{
    climate = "Clima agradavel"
} else if temperature < 30 {
    climate = "Um pouco quente"
} else {
    climate = "Quente pra caralho"
}

let letter = "i"
var letterType = ""

if letter == "a" || letter == "e" || letter == "i" || letter == "o" || letter == "u"{
    letterType = "vogal"
} else{
    letterType = "consoante"
}


//Switch
switch letter {
    case "a", "e", "i", "o", "u":
        letterType = "vogal"
    default:
        letterType = "consoante"
}

let speed = 95.0
switch speed {
    case 0.0..<20.0:
        print("primeira marcha")
    case 20.0..<40.0:
        print("segunda marcha")
    case 40.0..<50.0:
        print("terceira marcha")
    case 50.0..<90.0:
        print("quarta marcha")
    default:
        print("quinta marcha")
}

//Range
//Closed Range e Half-Closed Range
//... (Closed Range)
//..< (Half-Closed Range)

let range0_10 = 0...10
let range0_9 = 0..<10

//Intervalo de letras

let firstLetter = "e"
switch firstLetter {
    case "a"..."f":
        print("Lote 1")
    case "g"..."l":
        print("Lote 2")
    case "m"..."r":
        print("Lote 3")
    default:
        print("Lote 4")
}
