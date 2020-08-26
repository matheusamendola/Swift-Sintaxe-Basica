import UIKit

//Enumeradores (Enum) - Conjunto fechado de opcoes

enum CompassPoint{
    case north
    case east
    case west
    case south
}
var direction = CompassPoint.north
var direction2: CompassPoint = CompassPoint.north

//Modificar
direction = .south

//Nao precisa colocar o caso
enum SeatPosition: String {
    case aisle = "corredor", middle = "meio", window = "janela"
}

//Enum + Switch
//OBS: nao precisa do default
var passagerSeat = SeatPosition.window

switch passagerSeat {
    case .aisle:
        print("Passageiro está no corredor")
    case .middle:
        print("Passageiro está no meio")
    case .window:
        print("Passageiro está na janela")
}

//RAW Value = Strirngs na declaracao do enum
print(passagerSeat)
print(passagerSeat.rawValue)

//Automaticamente ja preenche o resto dos indices
enum Month: Int {
    case january = 1
    case february
    case march
    case april
    case may
    case june
    case july
    case august
    case september
    case octuber
    case november
    case december
}

print(Month.august.rawValue)

//Valores Associados (Associated Values) define o valor associados

enum Measure {
    case weight(Double)
    case age(Int)
    case size(width: Double, height: Double) //tupla
}

let measure: Measure = .size(width: 0.6, height: 1.71) //.weight(82) //.age(39)

switch measure {
case .weight(let weight):
    print("O seu peso é:\(weight)")
    case .age(let age):
    print("a sua idade é:\(age)")
    case .size (let size):
        print("Suas medidas de tamanho sao: \(size.width)m de largura e \(size.height)m de altura")
}
