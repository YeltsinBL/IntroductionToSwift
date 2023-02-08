//: [Previous](@previous)

import Foundation

//creación de Closure en variables o constantes
let closure = { (value: Int) -> Int in
//    print("Value \(value)")
    return value
}
closure(2)

//las funciones son parecidas a los closure
func returnInteger(value: Int) ->Int {
    return value
}
let funcion = returnInteger(value: 2)

//Utilización del SortedBy que acepta un closure
var names = ["Apple", "Swift", "Xcode", "IPhone"]
names.sorted { firstValue, secondValue in
    return firstValue < secondValue
}
//Optimizando el Closure - 1
names.sorted { firstValue, secondValue in
    firstValue < secondValue
}
//Optimizando el Closure - 2
let nameSorted = names.sorted { $0 < $1 }
nameSorted
//Optimizando el Closure - 3
let nameSorted2 = names.sorted(by: <)
nameSorted2

//Se puede hacer closure con las funciones
func backward(_ stringOne: String, _ stringTwo: String) -> Bool {
    return stringOne > stringTwo
}
let namesSortedWithFunction = names.sorted(by: backward)
namesSortedWithFunction

//Trailing Closure : el último parámetros de tipo closure
func saveUser(name: String, completionBlock: (Bool) -> Void) {
    print("Saving user...")
    completionBlock(true)
}
saveUser(name: "XCode") { boolean in
    print("Closure \(boolean)")
}
//Función con múltiples parámetros de tipo closure
enum BackendError {
    case customError
}
func getDataFromBacken(status: String,
                       onSuccess: () -> Void,
                       onFailure: (BackendError) -> Void) {
    if status == "Ok" {
        onSuccess()
    } else{
        onFailure(.customError)
    }
}
getDataFromBacken(status: "Ok") {
    print("OnSuccess")
} onFailure: { (error) in
    print("OnFailure \(error)")
}

//: [Next](@next)
