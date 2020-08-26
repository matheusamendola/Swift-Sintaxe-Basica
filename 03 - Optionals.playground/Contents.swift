import UIKit

//É necessario inicializar
var address: String = "Teste"
print(address)

var driverLicense: Int? //Variavel opcional

driverLicense = 123123

print("Numero da carteira:", driverLicense!) //Precisa "Desembrulhar conteudo" (!) (Nao segura)

//Optional Binding (Desembrulhar Seguro)
if let driverL = driverLicense{
    print("Numero da carteira:", driverL)
}
else{
    print("Sem Carteira de Motorista")
}

var addressNumber = Int ("100") //Convertendo String em Int
if let  addressNumber = addressNumber{
    print(addressNumber)
}

//Nil coaliscing Operator (Operador de Coalescencia nula) (??)
//Se der para converter string volta resultado, se nao retorna 0
let number: String = "582"
let addressNumber2 = Int(number) ?? 0

//Implicit Unwrapped Otionals
var name: String!
name = "Joaozinho"
if name != nil{
    print(name)
}

