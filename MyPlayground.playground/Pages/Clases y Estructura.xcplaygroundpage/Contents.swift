//: [Previous](@previous)

import Foundation
//Herencia: solo las clases pueden ser heredadas
class Vehiculo {
    var rueda: Int
    
    init(rueda: Int) {
        self.rueda = rueda
    }
    
    func start() {
        print("Numero de ruedas \(rueda)")
    }
}

class BMW: Vehiculo {
}
let bmw = BMW(rueda: 4)
bmw.start()

//ReferenceType: se usa con las clases
class UserClass {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

struct UserStruct {
    var name: String
}

let userClass = UserClass(name: "Usuario de clase")
let userStruct = UserStruct(name: "Usuario de structura")

var newUserClass = userClass
var anotherUserClass = userClass
//todas las variables apuntan a la misma referencia
print(userClass.name)
print(newUserClass.name)
print(anotherUserClass.name)
//si cambiamos el valor, cambia en todas las variables porque apuntan a la misma referencia
anotherUserClass.name = "New Value"
print(userClass.name)
print(newUserClass.name)

//ValueType: se usa con las struct y enum
//esta variable apunta a la struct pero no la referencia, sino copia el valor
var newUserStruct = userStruct
print(newUserStruct.name)
print(userStruct.name)
//al cambiar el valor, solo cambiara a la variable indicada porque es solo una copia
newUserStruct.name = "NewValue Struct"
print(newUserStruct.name)
print(userStruct.name)



//: [Next](@next)
