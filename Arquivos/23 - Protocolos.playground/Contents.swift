import UIKit

enum FuelType{
    case gasoline, ethanol, diesel, flet
}

//Obriga implementar metodo
protocol ACCapable{
    var hasAC: Bool{get set}
    func turnAC(on: Bool)
}

class Vehicle {
    var brand: String
    var fuelType: FuelType
    
    init(brand: String, fuelType: FuelType) {
        self.brand = brand
        self.fuelType = fuelType
    }
}

class Car: Vehicle, ACCapable{
    
    var numberOfDoors: Int
    var hasAC: Bool = true
    
    func turnAC(on: Bool) {
        if on{
            print("Ar ligado")
        } else{
            print("Desligando Ar")
        }
    }
    
    init(brand: String, fuelType: FuelType, numberOfDoors: Int) {
        self.numberOfDoors = numberOfDoors
        super.init(brand: brand, fuelType: fuelType)
    }
}

class Bike: Vehicle{
    
    var cc: Int
    
    init(brand: String, fuelType: FuelType, cc: Int) {
        self.cc = cc
        super.init(brand: brand, fuelType: fuelType)
    }
}

class Airplane: Vehicle, ACCapable{
    var numberOfEngines: Int
    var hasAC: Bool = true
    
    func turnAC(on: Bool) {
        if numberOfEngines > 1{
            print("Aviao com 1 nao dá")
    } else {
    if on{
        print("Ar ligado")
    } else{
        print("Desligando Ar")
    }
    }

    }
    
    init(brand: String, fuelType: FuelType, numberOfEngines: Int) {
        self.numberOfEngines = numberOfEngines
        super.init(brand: brand, fuelType: fuelType)
    }
}

