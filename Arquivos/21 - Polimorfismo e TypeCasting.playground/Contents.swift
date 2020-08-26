import UIKit

//Polimorfismo

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
    //Sobrescrevendo (Polimorfismo)
    override func emiteSound() {
        print("Au Au Au")
    }
    
    func run(){
        print("Cachorro esta correndo")
    }
}

class Bird: Animal{
    let canFly: Bool
    
    //Sobrescrevendo (Polimorfismo)
    override func emiteSound() {
        print("Piu Piu Piu")
    }
    
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

class Duck: Bird{
    override func emiteSound() {
        print("Quack Quack Quack")
    }
    
    init(color: String, gender: Character, breed: String) {
        super.init(color: color, gender: gender, breed: breed, canFly: true)
    }
}

let billy = Dog(color: "Preto", gender: "M", breed: "Lhasa Apso")
let zeCarioca = Bird(color: "Verde e Amarelo", gender: "M", breed: "Papagaio", canFly: true)
let donald = Duck(color: "Branco", gender: "M", breed: "Disney")

billy.emiteSound()
zeCarioca.emiteSound()
donald.emiteSound()

let maleBird = Bird(color: "Black", breed: "Sabia")

//TypeCasting - Tratar um tipo como se fosse outro tipo

let animals: [Animal] = [

    Animal(color: "Preto", gender: "F", breed: "Zurebeba"),
    Dog(color: "Marrom", gender: "M", breed: "Cocker Spaniel"),
    Dog(color: "Marrom", gender: "M", breed: "PitBull"),
    Duck(color: "Branco", gender: "F", breed: "Silvestre"),
    Bird(color: "Green", gender: "F", breed: "Avestruz", canFly: false)
]

print("______________________")
for animal in animals{
    animal.emiteSound()
    
    //Validar se é um Cachorro
    if animal is Dog{
        //Vai ser tratado como um cachorro
        (animal as! Dog).run()
    }
    if animal is Duck{
        (animal as! Duck).fly()
    }
    
    //Pode fazer com switch
    /*
     switch animal {
     case let dog as Dog:
        dog.run()
     case let bird as Bird:
        bird.fly
     default:
        break
     }
     */
    
}
