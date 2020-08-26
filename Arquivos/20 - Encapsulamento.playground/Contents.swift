import UIKit

//Encapsulamento

/*
 Open e Public - Permitem que entidades sejam usadas dentro de qualquer arquivo dentro do seu modulo a tambem de um arquivo de outro modulo que importee aquele modulo
 
 Internal - Permite que entidades sejam usados dentro de qualquer arquivo do seu proprio modulo, mas nao em arquivos de modulos de fora. é o tipo padrao
 
 FilePrivate - Restringe o uso de uma entidade somente dentro do seu proprio arquivo
 
 Private - Restringe o uso de uma entidade somente dentro da sua propria declaracao e a extensoes daquela declaracao que estejam no mesmo arquivo
 */

class CreditCard {
    //Declaracao de Variaveis
    let number: String
    let limit: Double
    private var invoiceValue: Double = 0 //Somente essa classe pode modificar
    
    let iof: Double = 6.38 //Constante
    
    //Contrutor
    init(number: String, limit: Double) {
        self.number = number
        self.limit = limit
    }
    
    //final n pode override
    final func makePurchase(off value: Double, isInternational: Bool) -> Bool {
        let debit = isInternational ? value * (1 + iof / 100) : value
        let finalValue = invoiceValue + debit
        if finalValue > limit{
            return false
        } else {
            invoiceValue = finalValue
            return true
        }
    }
    func getInvoice() -> Double{
        return invoiceValue
    }
    
}

let creditCard = CreditCard(number: "1234-1234-1234-1234", limit: 5000)
creditCard.makePurchase(off: 1500, isInternational: true)

//print(creditCard.invoiceValue) //Sem acesso (private)
print(creditCard.getInvoice())

class DebitCreditCard: CreditCard{
    private var _balance: Double = 0
    
    var balance: Double{
        return _balance
    }
    
    func makeTransaction(of value: Double){
        _balance += value
    }
    
}

let debitCreditCard = DebitCreditCard(number: "1234-1234-1234-1234", limit: 5000)
debitCreditCard.makeTransaction(of: 500)
debitCreditCard.makeTransaction(of: -100)
print(debitCreditCard.balance)
