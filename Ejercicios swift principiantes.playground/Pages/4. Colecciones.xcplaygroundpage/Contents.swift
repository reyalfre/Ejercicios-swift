import Foundation

// ARRAYS
// Es una colección en forma de una lista ordenada de valores del MISMO tipo de datos.
// [1, 5, 10, -1, 0, 8]

var arrayVacio: [Int] = []
print(arrayVacio)
print("arrayVacio está vacío? \(arrayVacio.isEmpty)")

var arrayInts: [Int] = [1, 2, 3]
print(arrayInts)

print("Cuantos elementos tiene arrayInts: \(arrayInts.count)")

// Para añadir un elemento al final:
arrayInts.append(0)

// O bien, podemos añadirlo así:
arrayInts += [10]  // equivalente a arrayInts = arrayInts + [10]

// Podemos añadir varios elementos de una vez:
arrayInts += [-1, -2]

// Para añadir (sin reemplazar) un elemento en una posición específica:
// --> La primera posición del array se numera desde 0 <--
arrayInts.insert(-100, at: 0)

// Para borrar un elemento en una posición específica
arrayInts.remove(at: 0)

// Acceder a los elementos del array (el índice empieza en 0)
print(arrayInts)
let primerElemento = arrayInts[0]
print("Primer elemento: \(primerElemento)")
print("Tercer elemento: \(arrayInts[2])")

// Modificar un elemento en una posición concreta:
arrayInts[4] = -233
print(arrayInts)

// Iterar (recorrer la totalidad) sobre un array
for elemento in arrayInts {
    print(elemento)
}

// Iteración sobre índice y valor
for (indice, elemento) in arrayInts.enumerated() {
    print("\(indice): \(elemento)")
}

// Cuidado con salirse de los índices del array!
// Swift/ContiguousArrayBuffer.swift:691: Fatal error: Index out of range
// arrayInts[100]

// Para no salirnos nunca del array, preguntamos cuantos elementos tiene:
print("El array tiene \(arrayInts.count) elementos. El índice máximo accesible es \(arrayInts.count - 1)")
arrayInts[arrayInts.count - 1]


// SETS (Conjuntos)
// Almacena valores del mismo tipo sin elementos repetidos, es decir, cada valor
// solo puede aparecer una vez en el conjunto.
// Dentro del < > es donde definimos el tipo de datos
var conjuntoNumeros: Set<Int> = [1, 2]
var conjuntoAnimales: Set<String> = ["Perro", "Gato", "Pez"]

conjuntoAnimales.count
conjuntoAnimales.isEmpty

// Insertar un elemento
conjuntoAnimales.insert("Lobo")
print(conjuntoAnimales)
// Si se insertan elementos repetidos, se queda como está
conjuntoAnimales.insert("Lobo")
print(conjuntoAnimales, "Los elementos repetidos no se insertan", "")

// Saber si el Set contiene un elemento dado
if conjuntoAnimales.contains("Lobo") {
    print("Tenemos al Lobo en el gallinero!")
}

// Iterar sobre un conjunto.
// Importante!!: NO se garantiza el orden
for animal in conjuntoAnimales {
    print(animal)
}
print("----- Recorrido ordenado alfabeticamente: ----")
// Recorrido ordenando los elementos
for animal in conjuntoAnimales.sorted() {
    print(animal)
}


// Diccionarios
// Un diccionario contiene asociaciones entre claves y valores
// Cada clave (que será única) tendrá asociado un valor
// Al definirlo, tanto las claves como los valores serán de un único tipo

var diccionarioVacio: [String: String] = [:]

// Las claves son 1, 2, 3
var diccionarioDeNumeros: [Int: String] = [1: "Uno", 2: "Dos", 3: "Tres"]

// Las claves son "Uno", "Dos", "Tres"
var otroDiccionarioNumeros: [String: Int] = ["Uno": 1, "Dos": 2, "Tres": 3]

var dadosDeAlta: [String: Bool] = ["Paco": true, "Antonio": false, "Juliana": true]

diccionarioVacio.isEmpty
diccionarioVacio.count

// Leer un elemento usando la clave:
print("Leer un elemento:")
print("Está paco dado de alta? \(dadosDeAlta["Paco"]!)")
print(dadosDeAlta["blblaibal"] ?? "No existe este usuario")

// Insertar, borrar, actualizar valores de los diccionarios

// Insertar un nuevo valor (si la clave no existe, la crea)
dadosDeAlta["Maria"] = true

// Actualizar el valor (si la clave existe, la modifica)
dadosDeAlta["Maria"] = false

// Borrar un entrada clave-valor
dadosDeAlta["Maria"] = nil
// O bien:
dadosDeAlta.removeValue(forKey: "Antonio")

print(dadosDeAlta)


// Iterar sobre todo el diccionario
for (usuario, alta) in dadosDeAlta {
    if alta {
        print("\(usuario) está dado de alta")
    } else {
        print("\(usuario) no está dado de alta")
    }
}
