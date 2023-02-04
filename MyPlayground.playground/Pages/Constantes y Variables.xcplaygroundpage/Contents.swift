//: [Previous](@previous)

import Foundation

//Variables
//se puede especificar o no el tipo de variable, para utilizar el Float se debe de especificar sino Swift lo tomara de tipo Double

//variable sin especificar
var greeting = "Hello, playground"
greeting = "Segundo texto"
//print(greeting)

//indicando el tipo de variable
var booleano: Bool = true
var entero: Int = 10

//variable de tipo Double y Float
var decimal = 10.0
var nodecimal:Float = 10.0

//Constantes
//no se pueden editar los valores, solo tienen el valor inicial cuando se crean
let constante = "Primera Constante"
//constante = "No se puede editar"

//Typealias
//se puede cambiar los nombres a los tipos de variables y constantes
typealias nombre = String
var name: nombre = "Primer Typealias"

typealias audio = UInt16
var maxAudio = audio.max

//Tuplas
//almacenas varios valores en un unico contenedor y estos pueden ser de diferentes tipos
let user = ("primer valor", "segundo valor")
user.0
user.1

let (primervalor, segundovalor) = ("primer valor", "segundo valor")
primervalor
segundovalor


//: [Next](@next)
