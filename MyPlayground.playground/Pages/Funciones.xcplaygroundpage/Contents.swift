//: [Previous](@previous)

import Foundation

func suma(numeroUno: Int, numeroDos:Int) -> Int {
    return numeroUno + numeroDos
}
suma(numeroUno: 10,numeroDos: 20)

func returnString(stringUno: String, stringDos: String) -> String {
    return "El dato es \(stringUno) \(stringDos)"
}
returnString(stringUno: "Primer", stringDos: "Valor")

func returnPrint(stringUno: String, stringDos: String){
    print( "El dato print es \(stringUno) \(stringDos)")
}
returnPrint(stringUno: "Primer", stringDos: "Valor")

//retornar Tuplas en funciones
func getTuplas() -> (String, String) {
    let name = "Tupla 1"
    let name2 = "Tupla 2"
    return (name, name2)
}
let (tupla1, tupla2) = getTuplas()
tupla1
tupla2

//nombres de los parametros
func useFunParameter(primerValor value1: String, segundoValor value2: String){
    print("El valor de los parametros con dos nombres es \(value1) \(value2)")
}
useFunParameter(primerValor: "Primero", segundoValor: "Segundo")
func useFunParameterSinNombre(_ value1: String, _ value2: String){
    print("El valor de parametro sin nombre es \(value1) \(value2)")
}
useFunParameterSinNombre("Primero", "Segundo")

//Parametros Variadic: son cuando se envian multiples datos al parametro del mismo tipo, es como enviar un array

func parameterVariadic(name: String...){
    print("Datos \(name)")
}
parameterVariadic(name: "Primero", "Segundo", "Tercero")
func parameterArray(name: [String]){
    print("Datos \(name)")
}
parameterArray(name: ["Primero", "Segundo", "Tercero"])


//Parametros Inout: modificar el parametro dentro del cuerpo
//se agrega el 'inout' en el parametro y al llamar a la funcion se agrega el '&' antes del valor del parametro
func cambiarValorParametro(name: inout [String]) {
    name = ["Nuevo", "Valor"]
    print(name)
}
var array = ["PrimerValor"]
cambiarValorParametro(name: &array)




//: [Next](@next)
