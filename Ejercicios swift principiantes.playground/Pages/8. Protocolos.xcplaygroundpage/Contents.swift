//: [Previous](@previous)

import Foundation

protocol Vehiculo {
    //Propiedad que podemos leer
    var marca: String { get }
    // Propiedad que posemos leer y escribir
    var velocidadActual: Double { get set }

    mutating func acelerar(cantidad: Double)
    func describir() -> String
}

//Extensiones: crear implementaciones por defecto
//o ampliar funcionalidades de una struct o class sin tener que crear herencia.
extension Vehiculo {

    func describir() -> String {
        return "Una \(marca) conduciendo a \(velocidadActual) km/h"
    }
}
//La struct Coche se adhiere o implementa el protocol Vehiculo
struct Coche: Vehiculo {
    var marca: String
    var velocidadActual: Double

    mutating func acelerar(cantidad: Double) {
        velocidadActual += cantidad
    }
}

var coche1 = Coche(marca: "Toyota", velocidadActual: 130)
print(coche1.describir())

// Implementación de múltiples protocolos (para poder hacer algo parecido a la herencia múltiple)

protocol Reproducible {
    func reproducir()
    func pausar()
    func detener()
}

protocol ControlVolumen {
    var volumen: Int { get set }
    mutating func subirVolumen()
    mutating func bajarVolumen()
}

class ReproductorMusical: Reproducible, ControlVolumen {
    enum EstadoInterno {
        case reproduciendo, pausado, detenido
    }
    private var cancionActual: String = "Desconocida"
    var volumen: Int = 50
    private var estadoInterno: EstadoInterno = .detenido

    func reproducir() {
        if estadoInterno == .reproduciendo {
            print("Detén primero la reproducción antes de reproducir de nuevo")
            return
        }
        print("Reproduciendo \(cancionActual)")
        estadoInterno = .reproduciendo
    }
    func pausar() {
        print("Reproductor pausado")
    }
    func detener() {
        print("Reproductor parado")
    }
    func subirVolumen() {
        if volumen < 100 {
            volumen += 10
        }
        print("Volumen a \(volumen)")
    }
    func bajarVolumen() {
        if volumen >= 10 {
            volumen -= 10
        }
    }
    func cambiarCancion(nuevaCancion: String) {
        cancionActual = nuevaCancion
        reproducir()
    }
}

var miReproductor = ReproductorMusical()
miReproductor.cambiarCancion(nuevaCancion: "19 dias y 500 noches")
miReproductor.reproducir()

// Uso de protocolos para poder comparar objetos de tipo struct o class mediante el == de Swift con el protocolo 'Equatable'

struct Producto: Equatable {
    let nombre: String
    let precio: Double
}

let producto1 = Producto(nombre: "Carne", precio: 10)
let producto2 = Producto(nombre: "Carne", precio: 10)
print("Es igual producto 1 a producto 2? \(producto1 == producto2)")

struct OtroProducto: Comparable {
    let nombre: String
    let precio: Double
    
    //lhs: left hand side, rhs: right hand side (es decir, lados izq. y der. de la comparación de igualdad ==
    //En este caso, para la comparación de igualdad usaremos el nombre y el precio. y la igualdad será cierta si coinciden tanto nobre como precio. Hemos omitido 'otraVariable'
    static func == (lhs: OtroProducto, rhs: OtroProducto) -> Bool {
        let comparacionNombre = lhs.nombre == rhs.nombre
        let comparacionPrecio = lhs.precio == rhs.precio
        return comparacionNombre && comparacionPrecio
    }
    static func < (lhs: OtroProducto, rhs: OtroProducto) -> Bool {
        return lhs.precio < rhs.precio
    }
}

let p1 = OtroProducto(nombre: "Carne", precio: 10)
let p2 = OtroProducto(nombre: "Pescado", precio: 10)
let p3 = OtroProducto(nombre: "Barra de pan", precio: 10)

print("Es menor el precio de p1 que p2?", p1 < p2)

var productos = [p1, p2, p3]
productos.sort()

for producto in productos {
    print("\(producto.nombre), \(producto.precio)")
}
