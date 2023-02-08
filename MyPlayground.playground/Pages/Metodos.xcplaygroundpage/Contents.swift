//: [Previous](@previous)

import Foundation

struct Metodo {
    func validate(user: String) {
        print("Método de \(user)")
    }
    static func create(user: String) {
        print("Método de \(user)")
    }
}
//Métodos de Instancia
let metodo = Metodo()
metodo.validate(user: "Instancia")
//Métodos de Tipo
Metodo.create(user: "Tipo")

//: [Next](@next)
