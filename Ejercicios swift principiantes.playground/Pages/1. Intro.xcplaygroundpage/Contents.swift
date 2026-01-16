import Foundation

// Imprimir un texto en la consola
print("Hola que tal")

var edad = 35
var nombre = "Antonio"

// Los var son variables (es decir, los puedo modificar)
nombre = "Pepe"
edad = 30

// Interpolación de Strings
print("Me llamo \(nombre) y tengo \(edad) años")

// Constantes se definen con let (valores no modificables una vez inicializados)
let miConstante = "Texto"
let miConstante2 = 200

print(miConstante)
// es igual a:
print("\(miConstante)")

// La siguiente linea da error si se quita el comentario
// No se puede volver a asignar un valor a una constante
// miConstante = "Nuevo texto"

// Podemos definir varias constantes o variables en una sola linea separadas por coma:
var x = 0, y = 0, z = 0


// Concepto de TIPOS y ANOTACIONES de tipos

var mensaje: String
mensaje = "Hola"

// En una sola linea
var mensaje2: String = "Hola"
var mensaje3 = "Adios" // Asume que es un String

// mensaje = 35 // Error: no se puede asignar 'Int' a un 'String'

var edad2: Int = 40

// Double o Float para valores que lleven decimales.
// NO puedo asignar un número con decimales a una variable Int
let numeroPi: Double = 3.1416

var otroNumero = numeroPi * 2.5
print(otroNumero)

/*
 Comentario multilínea
 Otra línea de comentario
 */


// Valores verdadero y falso para condicionales (Boolean)

let valorVerdadero: Bool = true
let valorFalso: Bool = false

var variableBoolean: Bool


// ALGEBRA DE BOOL

// Y (And) lógico
variableBoolean = true && true
print(variableBoolean)
print("-----")

// O (Or) lógico
variableBoolean = true || false
print(variableBoolean)
print("----")

// Negación: lo true se hace false, lo false se hace true
variableBoolean = !valorVerdadero
print(variableBoolean)


// CONDICIONALES

print(edad)
if edad > 20 {
    print("la persona tiene más de 20 años")
} else {
    print("la persona tiene menos de 20 años")
}

print(edad > 55)



// TUPLAS

let tupla1 = (25, 50)
let tupla2 = ("texto", 30.5, "otro texto", 40)
let tuplaPersona = (nombre: "María", edad: 50)

print(tupla1.0, tupla1.1)
print(tupla2.2)
print(tuplaPersona.nombre)


// Operaciones aritméticas
1 + 1
1 - 2
2 * 5
10 / 2.25
7 % 2  // Resto: 1

var a = 0
var b = 1

a = b + 1
a = a + b


// Comparaciones
print("a: \(a), b: \(b)")
print(a < b)
print(b > a)
print(a <= b)
print(a >= b)
print(a == b) // operador de igualdad: es a igual a b
print(a != b) // operador de diferencia: es a distinto de b?



// OPERACIONES CON Strings

// Si queremos definir una cadena en múltiples líneas, usamos tres comillas: """
let cadenaMultilinea = """
Esta es una cadena de texto
en múltiples líneas:
   - Un texto
   - Otro trexto
"""
print(cadenaMultilinea)

let cadena1 = ""
let cadena2 = "🤣Hola"

if cadena1.isEmpty {
    print("Está vacía")
}

// Concatenación de cadenas
let cadena3 = cadena1 + cadena2 + " " + "que tal"
print(cadena3)

// Comparar cadenas:
"Hola" == "Hola" // true
"Hola" == "hola" // false

// Convertir a mayúsculas y minúsculas:
print(cadena3.uppercased())
print(cadena3.lowercased())
print("Alfredo Maldonado")
