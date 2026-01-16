//: [Previous](@previous)

import Foundation

//Enumeraciones: definir conjunto de valores dentrero de una estructura

enum DiasSemana {
    case lunes
    case martes
    case miercoles
    case jueves
    case viernes
    case sabado
    case domingo
}
print("------------------- ENUMERACIONES ---------------")
var diaSemana = DiasSemana.sabado
var diaSemana2: DiasSemana = .martes

diaSemana = .jueves

if diaSemana == .sabado || diaSemana == .domingo {
    print("Es fin de semana")
}

switch diaSemana {
case .lunes, .martes, .miercoles, .jueves, .viernes:
    print("Es un dia entre semana")
case .sabado, .domingo:
    print("Es un dia de fin de semana")
}

print(diaSemana)
print(diaSemana2)

// Raw Values: asignar un valor dentro del enum, definiendo el tipo de dato

enum DiasSemanaConNombre: String {
    case lunes = "Lunes"
    case martes = "Martes"
    case miercoles = "Miercoles"
    case jueves = "Jueves"
    case viernes = "Viernes"
    case sabado = "Sabado"
    case domingo = "Domingo"
}

enum Posiciones: Int {
    case primerLugar = 1
    case segundoLugar = 2
    case tercerLugar = 3
}

var diaSemanaNombre: DiasSemanaConNombre = .martes
var posicion: Posiciones = .primerLugar

print("El día de la semana es: \(diaSemanaNombre.rawValue)")
print("La posicion es: \(posicion.rawValue)")
