//: [Previous](@previous)

import Foundation

struct Persona {
    var nombre: String
    var apellidos: String
    var edad: Int
}

struct Direccion {
    var calle: String
    var numero: Int
    var codigoPostal: String
}

struct DatosPersonales {
    var nombre: String
    var edad: Int
    var direccion: Direccion
}
var persona1: Persona
persona1 = Persona(nombre: "Maria", apellidos: "Garcia", edad: 10)

persona1.nombre
print(
    "Persona se llama: \(persona1.nombre), de apellidos: \(persona1.apellidos) y tiene \(persona1.edad) años"
)

persona1.edad = 11

print(
    "Persona se llama: \(persona1.nombre), de apellidos: \(persona1.apellidos) y tiene \(persona1.edad) años"
)

var direccion1 = Direccion(
    calle: "Calle de la paz",
    numero: 12,
    codigoPostal: "28080"
)
var datosPersona1 = DatosPersonales(
    nombre: "Paco",
    edad: 10,
    direccion: direccion1
)

print(
    datosPersona1.nombre,
    "de edad",
    datosPersona1.edad,
    "vive en la dirección",
    datosPersona1.direccion.calle
)

var datosPersona2 = datosPersona1
datosPersona2.nombre = "Julio"

print(datosPersona1.nombre, "y", datosPersona2.nombre)

//Structs con funciones
struct calculadora {
    var a: Int
    var b: Int

    func sumar() -> Int {
        return a + b
    }

    func dividir() -> Double {
        return Double(a) / Double(b)
    }
}
struct calculadora2 {
    func sumar(_ a: Int, _ b: Int) -> Int {
        return a + b
    }

    func restar(_ a: Int, _ b: Int) -> Int {
        return a - b
    }
    func multiplicar(_ a: Int, _ b: Int) -> Int {
        return a * b
    }
    func dividir(_ a: Int, _ b: Int) -> Double {
        return Double(a) / Double(b)
    }
}

var miCalculadora = calculadora(a: 5, b: 2)

let resultadoSuma = miCalculadora.sumar()
print(resultadoSuma)
print(miCalculadora.dividir())
print(miCalculadora.sumar())
