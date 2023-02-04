//: [Previous](@previous)

import Foundation
//Los opcionales son cuando puede haber una ausencia de valor
//cuando se pasa un número de string a int, este valor puede ser opcional
var numeroString = "123"
var numeroInt = Int(numeroString)
//print(numeroInt)

//en este caso, como no se puede convertir el string en int, muestra un valor de nil
let valorString = "Hola"
let valorIntOpcional = Int(valorString)
//print(valorIntOpcional)

//creando variable aceptando el valor nil
var variableOpcional : String? = "Creacion de una variable con tipo opcional"
variableOpcional = nil


//creación de un enum con opcionales
enum CustomOptional<Wrapped>{
    case none //caso opcional
    case some(Wrapped) //caso con valor
}

let myOptionalInt = CustomOptional<Int>.none
let myInt = CustomOptional<Int>.some(10)
let changeDeclarateType: CustomOptional<Int> = .some(20)

//obtener el valor sin la etiqueta opcional
var otoOpcional = "123"
var otroNumero = Int(otoOpcional)

//se puede obtener los valores con el: if let
if let value = otroNumero {
//    print(value) //devuelve el valor con la etiqueta opcional
    let sum = value + 1
    print("Uso del if let: " , sum)
}

//se puede obtener los valores con el map
otroNumero.map { value in
    print("Uso del map: " , value)
    
}

//verificamos si el valor asignado es opcional con valor nil para asignarle el 0
let obtenerValorOpcionalString =  valorIntOpcional ?? 0
print("Verificando con ??:", obtenerValorOpcionalString)

//utilizando el ForceUnwrap debemos de asegurarnos que exista valor en la variable opcional sino dara error.
print("Existe valor para el Force Unwrap: ", otroNumero!)
//print("No existe valor para el Force Unwrap: ",valorIntOpcional!) // por lo cual dara error al ejecutarlo

//: [Next](@next)
