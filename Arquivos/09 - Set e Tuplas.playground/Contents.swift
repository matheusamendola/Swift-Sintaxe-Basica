import UIKit

//Set - Colecao nao-ordenadda de objetos de mesmo tipo, que nao podem se repetir

var movies: Set<String> = [
    "Matrix",
    "Vingadores",
    "De Volta para o futuro",
    "Jurassic Park"
]
//Adicionar vazio
var movies2 = Set<String>()

//Adicionar no set
movies.insert("Homem-Aranha")

//Nao é possivel colocar itens repetidos
movies.insert("Homem-Aranha")

//retorna se foi inserido ou nao, e a palavra
let result = movies.insert("Homem-Aranha")
print(result.inserted, result.memberAfterInsert)

//remover elementos
movies.remove("Homem-Aranha")

//Percorrer elementos
for movie in movies{
    print(movie)
}

//Verificar se tem um item
if movies.contains("Matrix"){
    print("Está na lista")
}

//Combinar colecoes

var myWifeMovies: Set<String> = [
    "De repente 30",
    "Mensagem para voce",
    "Sintonia de amor",
    "De Volta para o Futuro",
    "Jurassic Park"
]

let favoriteMovies = movies.intersection(myWifeMovies)
print(favoriteMovies)

//Jutando todas
let allMovies = movies.union(myWifeMovies)
print(allMovies)

//Remover da colecao itens de outra
movies = movies.subtracting(myWifeMovies)
print(movies)

//Tuplas - Serve para agrupar multiplos tipos em um unico valor

let address = ("Av", "Paulista", 1578, "Sao Paulo", "SP", "01310-200")

//Pode se definir na mao e colocar oq é cada
let address2: (type: String, name: String, number: Int,city: String, state: String,zipCode: String) = ("Av", "Paulista", 1578, "Sao Paulo", "SP", "01310-200")

//para acessar elemento só colocar nome da var e seu indice
print(address.2)
print(address2.number)

//Colocar em variaveis diferentes se quiser tirar um item colocar _
let (type, name, number, city, state, cep) = address
print(type)
print(name)
