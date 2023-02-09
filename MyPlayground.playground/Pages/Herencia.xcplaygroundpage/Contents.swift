//: [Previous](@previous)

import Foundation

//Clase Base - Padre
class Vehicle {
    var currentSpeed = 0.0
    
    var description: String {
        return "Travel at \(currentSpeed)"
    }
    
    func makeNoise() {
        print("Vehicle noise...")
    }
    final func create() {
        print("Creating user...")
    }
}

//Clase Heredada
class Train: Vehicle {
//    sobreescribiendo metodo de la clase base
    override func makeNoise() {
        print("Metodo override")
    }
//    sobreescribiendo propiedades
    override var description: String {
        return "Train"
    }
//    no se puede sobreescribir las funciones con final
//    override func create() {
//        print("New creating")
//    }
}
let train = Train()
train.makeNoise()
train.description

//: [Next](@next)
