import UIKit

//Tratamento de Erros

//tipos de erro
enum LoginError: Error{
    case wrongLogin
    case wrongPassword
    case noInternetConnection
}

func login(userName: String, password: String) throws -> Bool{
    if checkInternetConection(){
        if userName != "Eric"{
            throw LoginError.wrongLogin
        }
        if password == "123456"{
            throw LoginError.wrongPassword
            return true
        } else {
            return true
        }
    } else{
        throw LoginError.noInternetConnection
    }
}

func checkInternetConection() -> Bool{
    
    return true
}
do{
    let loginResult = try login(userName: "eric", password: "123456")
} catch LoginError.wrongLogin{
    print("Nome do usuario invalido")
} catch LoginError.wrongPassword{
    print("Senha Errada")
} catch LoginError.noInternetConnection{
    print("Sem Internet")
}

//Ignorar Erro - se der erro volta nil
let loginResult2 = try? login(userName: "eric", password: "123456")

//Forcado quando sabe que n vai dar erro (!)

