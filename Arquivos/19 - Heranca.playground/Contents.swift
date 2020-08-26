import UIKit

//Heranca

class Animal {
    let color: String
    let gender: Character
    let breed: String //Raca
    
    init(color: String, gender: Character , breed: String) {
        self.color = color
        self.gender = gender
        self.breed = breed
    }
    
    func emiteSound(){
        print("...")
    }
}

//Classe Dog herda de Animal
class Dog: Animal{
    func run(){
        print("Cachorro esta correndo")
    }
}

class Bird: Animal{
    let canFly: Bool
    
    func fly(){
        if canFly{
        print("O passaro esta voando")
        } else{
            print("Esse passaro nao voa")
        }
    }
    
    //Designated Initializer - Obrigacao alimentar
    init(color: String, gender: Character , breed: String, canFly: Bool) {
        self.canFly = canFly
        //Chama construtor classe mae
        super.init(color: color, gender: gender, breed: breed)
    }
    
    //Convenience Initializer - mais conveniente
    convenience init(color: String, breed: String){
        self.init(color: color, gender: "M", breed: breed, canFly: true)
    }
    
}

let billy = Dog(color: "Preto", gender: "M", breed: "Lhasa Apso")
let zeCarioca = Bird(color: "Verde e Amarelo", gender: "M", breed: "Papagaio", canFly: true)

billy.emiteSound()
zeCarioca.emiteSound()

let maleBird = Bird(color: "Black", breed: "Sabia")

/*
 Regras
 1- Designated Initializer deve chamar outro designated da sua classe mae
 2- Um Convenience Initializer deve chamar outro initializer da mesma classe
 3-Um Convenience Initializer deve chamar no final outro designated initializer
 */
