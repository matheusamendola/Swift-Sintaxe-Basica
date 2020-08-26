import UIKit

/*
 Semelhancas
 
 -Ambas possuem propriedade para armazenar valores
 -Ambas podem implementar métodos para adicionar mais funcionalidades
 -Podem trabalhar com subscripts
 -Definem inicializadores para configurar seus valores iniciais
 -Podem ser estendidas para expandir suas funcionalidades
 -E também podem implementar protocolos
 
 Diferencas

 -Somente classes trabalham heranca, ou seja, podem herdar e serem herdadas
 -Type Casting só funciona com classes
 -Possuem além de construtores, os metodos desconstrutores, que permitem remover da memoria qualquer recurso que a classe esteja consumindo
 -Permitem que eu possa ter mais de uma referencia para a mesma classe
 */

struct Student{
    var name: String
    var age: Int
}

class Person {
    var name: String
    var age: Int
    weak var friend: Person? //Referencia fraca
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    //Desconstrutor - verifica se foi desalocado
    deinit {
        print("\(name) Foi Desalocado")
    }
}

var student1 = Student(name: "zeca", age: 22)
var student2 = student1 //Copiando struct

student1.name = "Alisson"
student1.age = 33

print(student2.name, student2.age)

//============================
var person1: Person? = Person(name: "Zeca", age: 22)
var person2: Person? = Person(name: "jao", age: 72)

person1!.name = "Alisson"
person1!.age = 33

print(person2!.name, person2!.age)

person1?.friend = person2
person2?.friend = person1

//Se nao tivesse o weak eles nao iam desalocar pois ainda tem referencia
person2 = nil
person1 = nil

//Value Type passagem por copia

//Reference Type passagem por referencia

//Copiar varios itens
let array: [Int] = [3, 6, 7, 8, 0, 12, 34 , 56, 16, 87, 443, 676, 734]

//Copy on Write - so gera um novo array quando modifica
var array2 = array

array2[0] = 45



