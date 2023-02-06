//: [Previous](@previous)

import Foundation

//Arrays
//Diferentes formas de declararlo
var primerArray: [String]
//var segundoArray: Array<String>

//Inicializando un array
//primerArray = []
//var segundoArray = [Int]()
var segundoArray:[Int] = []

//Arrays con valores
primerArray = ["Declarando", "Inicializando"]
var arrayString = ["primer valor", "segundo valor"]
var arrayOfStrins = Array(arrayLiteral: "Swift", "Xcode")

//accediendo a los valores
var hayValor = "Hay elementos? \(arrayString.isEmpty ? "No" : "Si") "
var cuantohay = "Cuantos elementos hay? \(arrayString.count)"
//Añadir nuevos elementos
arrayString.append("Agregar elemento")
//arrayString += ["otra forma"]
arrayString.insert("Insertando en una posicion especifica", at: 2)
//arrayString.remove(at: 0)//elimina un elemento de la posición indicada
//arrayString.removeFirst()//elimina el primer elemento del array
//arrayString.removeLast()//elimina el último elemento del array
arrayString.reverse()//invierte las posiciones del array
arrayString.shuffle()//desordena los elementos del array

print("Array: \(arrayString)")

//Set
//creación
var setString = Set(["1","2","3"])
var setOtro = Set(arrayLiteral: "1","2","3")

//accediendo a los valores
setString.insert("4")
setString.contains("1")//preguntamos si ese valor es uno de los elementos
setString.remove("2")
print("Set: \(setString)")

//Diccionarios
//creación
var dictionaryVacio: [String: String] = [:]
var dictionaryValores = ["name": "Primer valor", "type":"Ejercicio"]

//accediendo a los valores
var hayValoresDictionary = dictionaryValores.isEmpty ? false : true
var cuantosvaloresDictionary = dictionaryValores.keys.count
dictionaryValores["nuevo"] = "Agregando valor"
dictionaryValores.updateValue("Actualizando", forKey: "type")
dictionaryValores.removeValue(forKey: "name")
//dictionaryValores["name"] = nil // otra forma de eliminar un elemento
/**obtener el valor antes de actualizarlo**/
//if let valorAntiguo = dictionaryValores.updateValue("Actualizando", forKey: "type"){
//    print(valorAntiguo)
//}
/**obtener el valor antes de actualizarlo**/

print(dictionaryValores)

//: [Next](@next)
