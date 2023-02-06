//: [Previous](@previous)

import Foundation

//propiedades instanciada y tipo
struct User {
    var name: String
    static var type: String = "Tipo"
}
let user = User(name: "Instanciada")
user.name
User.type

//propiedad getter y setter
struct Person {
    var salary = 100
    
    var salaryPerson: Int {
        get {
            return salary / 2
        }
        set(newValue){
            self.salary = newValue
        }
    }
}
var person = Person()
person.salary
person.salaryPerson
person.salaryPerson = 300
person.salaryPerson
person.salary


//propiedad Observers
struct Database {
    var name: String {
        willSet(newName){
            print("Cuando se llama para actualizar el valor '\(name)' por '\(newName)' ")
        }
        didSet{
            print("Cuando se actualizo el valor: \(name)")
        }
    }
}
var database = Database(name: "Primero")
database.name = "Nuevo valor"


//: [Next](@next)
