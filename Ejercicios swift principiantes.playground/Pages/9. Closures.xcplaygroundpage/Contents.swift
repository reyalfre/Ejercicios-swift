//: [Previous](@previous)

import Foundation

// Closures o funciones anónimas

func saludar(nombre: String) -> String {
    return "Hola, \(nombre)"
}

let saludarClosure = { (nombre: String) -> String in
    return "Hola, \(nombre)"
}

print(saludar(nombre: "Julio"))
print(saludarClosure("Ana"))
//Por esto se llama función anónima: no es necesario darle un nombre
print({ (nombre: String) -> String in return "Hola, \(nombre)" })

//Notación: de la más explícita a la más abreviada

let closure1 = { (a: Int, b: Int) -> Int in return a + b }
let closure2 = { (a: Int, b: Int) in return a + b }

//También puede inferir los tipos de los parámetros
let closure3: (Int, Int) -> Int = { (a: Int, b: Int) in return a + b }
let closure4: (Int, Int) -> Int = { return $0 + $1 }

//La forma más breve: cuando una sola expresiópn, no hace falta 'return'
let closure5: (Int, Int) -> Int = { $0 + $1 }

print(closure1(5, 3))
print(closure2(5, 3))
print(closure3(5, 3))
print(closure4(5, 3))
print(closure5(5, 3))

let closure6: (Int, Int) -> Int = (+)

print(closure1(2, 3))
print(closure5(2, 3))

//Funciones que reciben closures como parámetro

func procesarNumeros(_ a: Int, _ b: Int, operacion: (Int, Int) -> Int) -> Int {
    return operacion(a, b)
}

let sumar = { (x: Int, y: Int) -> Int in x + y }

procesarNumeros(2, 3, operacion: sumar)

// Podemos hacerlo como función anónima
procesarNumeros(2, 3, operacion: { x, y in x + y })

//Idem con argumentos abreviados
procesarNumeros(2, 3, operacion: { $0 + $1 })

//Trailing closures: cuando la función que se pasa es el último parámetro
procesarNumeros(2, 3) { $0 + $1 }

//Ejemplos de uso de los trailing closures en las colecciones

//let numeros = [1, 2, 4, 8, 16]
let numeros = Array(1...16)

//Filtrar los que son mayores que 5
let menoresQue5 = numeros.filter {
    $0 < 5
}
//Identifica a: numeros.filter({ $0 < 5 })
print(menoresQue5)

//Mapear valores
let numerosAlCuadrado = numeros.map { $0 * $0 }
print(numerosAlCuadrado)
let numerosString = numeros.map { String($0) }
print(numerosString)

var numeroVarios = [3, 1, 5, 0, 1, 6, 8, 11, -1, 4]
let ordenadosMenorAMayor = numeroVarios.sorted()
print(ordenadosMenorAMayor)
let ordenadosMayorAMenor = numeroVarios.sorted { $0 > $1 }
print(ordenadosMayorAMenor)
//Misma forma que { $0 > $1}, pero abreviada
print(numeroVarios.sorted(by: >))
