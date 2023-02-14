//: [Previous](@previous)

import Foundation

//intercambiar valores de los parámetros en una función
func swapTwoStrings(_ a: inout String, _ b: inout String) {
    let tempA = a
    a = b
    b = tempA
}
var valueA = "Hola"
var valueB = "Xcode"
swapTwoStrings(&valueA, &valueB)
print("swapTwoStrings: Primer valor \(valueA) y segundo valor \(valueB)")


//Función genérica
func swapTwoValue<T>(_ a: inout T, _ b: inout T) {
    let tempA = a
    a = b
    b = tempA
}
var valueC = "Hola"
var valueD = "Xcode"
swapTwoValue(&valueC, &valueD)
print("swapTwoValue: Primer valor \(valueC) y segundo valor \(valueD)")


//Tipos genéricos
struct Stack<Element> {
    var items = [Element]()
    
    mutating func push(_ item: Element) {
        items.append(item)
    }
    mutating func pop() -> Element {
        return items.removeLast()
    }
}

var stackOfInts = Stack<Int>()
stackOfInts.push(1)
stackOfInts.push(2)
stackOfInts.push(3)

stackOfInts.items
print(stackOfInts.items)

var stackOfDoubles = Stack<Double>()
stackOfDoubles.push(1.1)
stackOfDoubles.push(2.2)
stackOfDoubles.push(3.3)

stackOfDoubles.items
print(stackOfDoubles.items)

var stackOfStrings = Stack<String>()
stackOfStrings.push("Hola")
stackOfStrings.push("Xcode")
stackOfStrings.push("Swift")

stackOfStrings.items
print(stackOfStrings.items)

//: [Next](@next)
