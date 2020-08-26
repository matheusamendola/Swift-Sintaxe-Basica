import UIKit

var states = [
    "AC": "Acre",
    "AL": "Alagoas",
    "AP": "Amapa",
    "AM": "Amazonas",
    "BA": "Bahia",
    "ES": "Espirito Santo"
]

var studentGrade: [String: Double] = [:] //Inicializar vazio

states["GO"] = "Goiaz"

states["GO"] = "Goias" //Editar

//Armazenar valor antigo (Armazena e volta valor antigo) retorna optional

let oldGO = states.updateValue("GOIAS", forKey: "GO")

let myState = states["ES"]

if let state = myState{
    print(state)
}

//Remover item
states["GO"] = nil

//Contar quantos tem
print(states.count)

//Retornar Keys
let keys = Array(states.keys)
print(keys)

//Retornar values
let values = Array(states.values)
print(values)

