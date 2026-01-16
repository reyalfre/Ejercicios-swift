import Foundation
import UIKit
import SwiftUI

var greeting = "Hello, playground"
var greeting2 = "Hello, playground"

var constante = 10
constante = 5
print(greeting)

var x=5, y=10, z=5.5


var micolor : Int = 5
micolor = 10

let mitexto = "😀 emoji"
print(mitexto)

/*
    Multilinea
    linea 2
 */
let pi = 3.14159
var numero: Int = 5

numero = numero + Int(pi)

let pisumado = pi + Double(numero)
print(pisumado)

var action: String
var person = "hater"

if person == "hater" {
    action = "hate"
} else if person == "player" {
    action = "play"
} else {
    action = "cruise"
}
        
        
let tupla1 = (1, "hola", "que tal")
        print(tupla1.0)

let tupla2 = (codigo: 500, descripcion: "Error!")
print("Mensaje devuelto: \(tupla2.codigo) con código de error:\"\(tupla2.descripcion)\"")

let datos: String? = nil
let altura: Int? = nil

let datosCompletos = "Nombre: Pepe," + " " + "Datos: " + (datos ?? "No hay datos")

print(datosCompletos)

print(altura ?? 100)


let miNumero : Int? = nil

var numeroFinal: Int

/**guard let numeroFinal = miNumero else {
    fatalError("Conversion no valida")
}
print(numeroFinal)
 **/

var constante1: Int = 5
print(constante1)


var a = 5.0, b = 10.0
var c: Double

c = a / b

print(c)


var num1 = 3


if num1 == 3 {
    print("polla")
}

var num2 = 5

num1 != num2

"hola" == "hola"
"hola" == "Hola".lowercased()

var margen = 10
var contenido = 50
var alturaTotal = margen + contenido
if padding {
    alturaTotal = alturaTotal + 20
}
print(alturaTotal)

alturaTotal = 0
alturaTotal = margen + contenido + (padding ? 20 : 0)
