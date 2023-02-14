//: [Previous](@previous)

import Foundation
import UIKit

//Sintaxis
protocol Example {
    
}
//Usar el protocolo en una struct y class
struct exampleStruct: Example {
    
}
//primero la clase que hereda y luego el protocolo
class exampleClass: UIView, Example {

}


//Protocolo con Propiedades de Instancia
protocol MyProtocol {
    var mustBeSettable: Int {get set}
    var doesNotNeedToBeSettable: Int {get}
}
//Usar el protocolo en una struct
struct SomeStruct: MyProtocol {
//    implementar la propiedades del protocolo
    var mustBeSettable: Int
    var doesNotNeedToBeSettable: Int
}
//Instanciamos las propiedades
let someStruct: MyProtocol = SomeStruct(mustBeSettable: 1,
                                        doesNotNeedToBeSettable: 1)
someStruct.doesNotNeedToBeSettable


//Protocolo con Propiedades de Tipo
protocol SomeOtherProtocol {
    static var someTypeProperty: Int {get set}
}

//Otros tipos de propiedades
protocol Shippeable {
    var street: String {get}
    var city: String {get}
    var zip: String {get}
}
//al implementar las propiedades también se pueden crear otras propiedades
struct Product: Shippeable {
    var id: String
    var name: String
    var street: String
    var city: String
    var zip: String
}

//Protocolos con Métodos
protocol Calculable {
    func calculate() -> String
}
struct Calculator: Calculable {
    func calculate() -> String {
        return " "
    }
}

//Protocolos con Inicializadores
protocol Initializable {
    init(parameterOne: String, parameterTwo: String)
}
struct User: Initializable {
    init(parameterOne: String, parameterTwo: String) {
        
    }
}

//Protocolo con extensión y clase
protocol Animatable {
    func animate()
}
extension Animatable {
    func animate() {
        print("Start animation")
    }
}
class MyCustomView: Animatable { }
let myView = MyCustomView()
myView.animate()


//: [Next](@next)
