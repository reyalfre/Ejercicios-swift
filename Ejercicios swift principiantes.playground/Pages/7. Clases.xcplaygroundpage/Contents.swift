//: [Previous](@previous)

import Foundation

/*
 Clases

La idea de una clase es reutilizar propiedades, métodos, de otras estructuras para no reescribir código, para añadir funcionalidades.
 Es el fundamento de la Programación orientada a objetos.
 */

class Vehiculo {
    var marca: String
    var modelo: String
    var velocidadActual: Int = 0

    init(marca: String, modelo: String) {
        self.marca = marca
        self.modelo = modelo
    }

    func acelerar(cantidad: Int) {
        velocidadActual += cantidad
    }
}

var miCoche = Vehiculo(marca: "Toyota", modelo: "Corolla")
print(miCoche.marca, miCoche.modelo, miCoche.velocidadActual)
miCoche.acelerar(cantidad: 10)
print("Mi coche va a", miCoche.velocidadActual, "km/h")

/* Herencia
    La clase vehiculo hereda las propiedades y métodos de la clase vehículo, y además podemos añadir propiedades y funciones adicionales o modificarlas.
 */

class VehiculoLujo: Vehiculo {
    var asientosCalefactables: Bool = false

    override func acelerar(cantidad: Int) {
        velocidadActual = velocidadActual + cantidad * 2
        print("velocidad actual: ", velocidadActual)
    }

    func suscribirseAAsientosCalentitos(suscripcion: Bool) {
        asientosCalefactables = suscripcion
    }

    func mostrarDetalles() {
        print(
            "Soy un vehículo de lujo, tengo asientos calefactables:",
            asientosCalefactables
        )
    }

}

var miCocheLujoso = VehiculoLujo(
    marca: "Maserati",
    modelo: "Turbo-Spin-Widowmaker"
)

miCocheLujoso.acelerar(cantidad: 50)
miCocheLujoso.suscribirseAAsientosCalentitos(suscripcion: true)
print(
    miCocheLujoso.velocidadActual,
    miCocheLujoso.asientosCalefactables,
    miCocheLujoso.mostrarDetalles()
)

//Propiedades y métodos públicos o privados

class Pantalla {
    private(set) var ancho: Int
    private(set) var alto: Int
    private(set) var pixels: Int = 0

    init(ancho: Int, alto: Int) {
        self.ancho = ancho
        self.alto = alto
        actualizarPixels()
    }

    func modificarTamañoPantalla(nuevoAncho: Int, nuevoAlto: Int) {
        ancho = nuevoAncho
        alto = nuevoAlto
        actualizarPixels()
    }
    private func actualizarPixels() {
        pixels = ancho * alto
    }
}
var miPantalla = Pantalla(ancho: 3840, alto: 2160)
print(miPantalla.pixels)
miPantalla.modificarTamañoPantalla(nuevoAncho: 1920, nuevoAlto: 1080)
print(miPantalla.pixels)

struct Producto {
    let nombre: String
    var precio: Double
    var existencias: Int

    var valorTotal: Double {
        return precio * Double(existencias)
    }
    func mostrarInfoProducto() -> String {
        "\(nombre), \(precio) euros, \(existencias) unidades, valor total: \(valorTotal) euros"
    }
}

class Tienda {
    let nombre: String
    private var productos: [Producto] = []

    init(nombre: String) {
        self.nombre = nombre
    }
    func agregarProduto(producto: Producto) {
        productos.append(producto)
    }
    func mostrarInventario() {
        print("Inventario de tienda\(nombre):")
        for producto in productos {
            print(producto.mostrarInfoProducto())
        }
    }
    func valorTotalInventario() -> Double {
        var acumulado = 0.0
        for producto in productos {
            acumulado += producto.valorTotal
        }
        return acumulado
    }
    func agregarExistencias(nombreProducto: String, existencias: Int) {
        if let indice = productos.firstIndex(where: {
            $0.nombre == nombreProducto
        }) {
            productos[indice].existencias += existencias
        }
    }
}

var producto1 = Producto(nombre: "Silla", precio: 50.0, existencias: 10)
var producto2 = Producto(nombre: "cafe", precio: 2.99, existencias: 5)
print(producto1.mostrarInfoProducto())

var tienda = Tienda(nombre: "Frisby")
tienda.agregarProduto(producto: producto1)
tienda.agregarProduto(producto: producto2)
tienda.mostrarInventario()
print(
    "El valor del inventario de la tienda es de \(tienda.valorTotalInventario()) euros."
)
tienda.agregarExistencias(nombreProducto: "papel", existencias: 5)
tienda.mostrarInventario()
