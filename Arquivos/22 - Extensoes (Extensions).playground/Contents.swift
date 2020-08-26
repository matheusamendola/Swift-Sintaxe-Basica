import UIKit
import Foundation
//Extensoes

var name = "Matheus Amendola"

//Extender a Classe String
extension String{
    var vowels: [Character]{
        var list: [Character] = []
        for character in "Matheus Amendola" {
            print(character)
        }
        return list
    }
    func initials() -> String{
        return String(self.components(separatedBy: " ").map({$0.first!}))
    }
}

print(name.vowels)
print(name.initials())

class Account{
    let number: String
    var balance: Double = 0
    
    init(number:String) {
        self.number = number
    }
}

extension Account {
    convenience init(number:String, balance: Double){
        self.init(number: number)
        self.balance = balance
    }
}
let account = Account(number: "231323123132")
