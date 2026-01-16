//: [Previous](@previous)

import Foundation

var cadenaConEscapes = "Hola Que tal\nYo bien, \"entrecomillado\""
print (cadenaConEscapes)

var cadenaVacia = ""

if cadenaVacia == ""{
    print("vacia")
}
if cadenaVacia.isEmpty{
    print("vacía")
}

var cadenaMutable = "Hola"
cadenaMutable = cadenaMutable + " y adios"

let caracter1: Character = "H"
type(of: caracter1)

//Interpolación de cadenas

var cadenaConVariables: String
cadenaConVariables = "Hola, el primer caracter es: \(caracter1)"

cadenaConVariables = "2+2 es \(2 + 2)"

print(cadenaConVariables)

let esAdulto = true
print("Antonio es \(esAdulto ? "adulto" : "niño")")

//Concatenacion
print("Hola" + " ❤️ " + "que" + " " + "tal? Antonio es \(esAdulto)")

let cadena2 = "12345abcde"

let cadena3 = "12345ABCDE"

print(cadena3.isEmpty)
print(cadena3.lowercased())


var nombres: [String] = ["Paco","Maria","Juan", "Ana"]
var numeros = [1, 2, "3"] as Any
var nombresVacios = [String]()

nombresVacios.append("Julio")
print(nombresVacios)

var todosLosNombres = nombres + nombresVacios
print(todosLosNombres)

print("Hay \(todosLosNombres.count) nombres")
