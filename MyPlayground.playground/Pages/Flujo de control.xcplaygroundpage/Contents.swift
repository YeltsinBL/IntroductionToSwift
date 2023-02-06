//: [Previous](@previous)

import Foundation

//IF
var isTrue = false
var nro = 10

//la coma ',' dentro de la condicion funciona como el '&&'
//if isTrue != true && nro == 10
if isTrue != true, nro == 10 {
    print("si es diferente")
}else{
    print("No es diferente")
}

//Guard : dentro de los playground se utiliza funciones para utilizarlo
//verificar el Array
var newArray:[String] = []
func checkArray() {
    guard !newArray.isEmpty else {
        print("El array esta vacio.")
        return
    }
    
    print("El array no eseta vacio.")
}
checkArray()

//obtener el valor opcional
var valueOptional : Int? = 2
func checkOptional() {
    guard let value = valueOptional else {
        print("El valor opcional es nil")
        return
    }
    print("el valor opcional es \(value)")
}

checkOptional()

//Switch
var nroSwitch = 11
switch nroSwitch {
case 10:
    print("El valor del Switch es 10")
default:
    print("El valor del Switch es \(nroSwitch)")
}
//utilizando Where dentro de un Switch
switch nroSwitch {
case let x where nroSwitch > 0 :
    print("El numero de Switch es mayor a 0: \(x)")
default:
    print("El numero de Switch es 0")
}
//utilizando Enum
enum Estado {
    case enviado
    case entregado
    case leido
}
let status : Estado = .leido
switch status {
case .enviado:
    print("Enviado")
case .entregado:
    print("Entregado")
case .leido:
    print("Leido")
}

//For-In
//se puede utilizar una condicional dentro de la sentencia
//utilizando Array
let names = ["Primer", "Segundo", "Tercero"]
for name in names where name.count > 6 {
    print("String con caracteres mayores a 6: \(name)")
}
//utilizando Diccionario
let useDictionary = [10: "Primero", 20: "Segundo", 30: "Tercero"]
for (key,value) in useDictionary where key > 10 {
    print("Numero \(key) y valor \(value)")
}

//While
var numero = 0
while numero < 5 {
    print("El numero en while es \(numero)")
    numero += 1
}
repeat {
    print("El numero en repeat es \(numero)")
    numero += 1
} while numero < 8


//: [Next](@next)
