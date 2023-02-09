//: [Previous](@previous)

import Foundation

enum MessageStatus {
case sent
    case receive
    case read
}
let status = MessageStatus.sent
print(status)

enum CompassPoint {
    case north, south, east, west
}
//asignando a variables
var pointOne = CompassPoint.east
var pointTwo: CompassPoint = .south

//usando switch
switch pointOne {
case .north:
    print("North")
case .south:
    print("South")
case .east:
    print("East")
case .west:
    print("West")
}

//Protocolo Caseltarable
enum CompassPointIterable: CaseIterable {
    case north, south, east, west
}
CompassPointIterable.allCases

//Associated Value
enum Field {
    case name(String)
    case street(String)
    case phone(number: String)
}
let name: Field = .name("Xcode")
let street: Field = .name("blog")
let phone: Field = .name("123456789")

//Raw Values
enum MessageEncoded: String {
    case keyOne = "123456789"
    case keyTwo = "query"
}
let messageEncoded = MessageEncoded.keyOne.rawValue

if messageEncoded.isEmpty {
    print("String esta vacío.")
} else {
    print("String no esta vacío")
}





//: [Next](@next)
