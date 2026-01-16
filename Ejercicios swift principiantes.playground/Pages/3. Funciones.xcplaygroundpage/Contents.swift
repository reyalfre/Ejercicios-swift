import Foundation

//FUNCIONES

func saludar() {
    print("Holas")
}

saludar()

func saludarPersona(persona: String) {
    print("Hola, \(persona)")
}

saludarPersona(persona: "Marcos")
saludarPersona(persona: "Jose")

func saludarOtraPersona(_ persona: String) {
    print("Hola, \(persona)")
}

saludarOtraPersona("Antonio")

//Funciones que devuelven un valor y reciben varios parámetros (separados por comas)
func sumar(a: Int, b: Int) -> Int {
    var resultado = a + b
    return resultado
}

print(sumar(a: 10, b: 5))

// Funciones que devuelven varios valores
// Para ello podemos usar las tuplas
// Ejemplo: una función que calcula la división entera y el resto.
func calculaDivisionResto(dividendo: Int, divisor: Int) -> (
    division: Int, resto: Int
) {
    let division = dividendo / divisor
    let resto = dividendo % divisor
    return (division, resto)
}

let resultado = calculaDivisionResto(dividendo: 10, divisor: 3)
print("La división es: \(resultado.division) y el resto es: \(resultado.resto)")

//Funciones con return implícito
func saludo2(_ persona: String) -> String {
    "Hola de nuevo, \(persona)"
}

print(saludo2("Patricia"))

//Funciones con parámetros por defecto

func saludarEducadamente(nombre: String, serEducado: Bool = true) {
    if serEducado {
        print("Saludos, estimado/a \(nombre)")
    } else {
        print("Déjame en paz, \(nombre)")
    }
}
saludarEducadamente(nombre: "María")
saludarEducadamente(nombre: "Ana", serEducado: false)

// Funciones con parámetros variables (de cero o "N" parámetros)

func calcularSuma(_ numeros: Int...) -> Int {
    var suma: Int = 0
    for numero in numeros {
        suma += numero
    }
    return suma
}
print(calcularSuma(1, 2, 3, 4, 5))

func restar(a: Int, b: Int) -> Int { a - b }

var funcionGenerica: (Int, Int) -> Int = sumar
print(
    "Llamada a funcionGenerica cuando está asignada a sumar: ",
    funcionGenerica(3, 3),
    "\n"
)

funcionGenerica = restar
print(
    "Llamada a funcionGenerica cuando está asignada a restar: ",
    funcionGenerica(3, 3)
)
//funcionSuma = resultado
//var funcionSuma2: (Int, Int) -> Int = { a + b}
func usarFuncionMatematica(_ funcion: (Int, Int) -> Int, a: Int, b: Int) -> Int
{
    return funcion(a, b)
}

usarFuncionMatematica(sumar, a: 2, b: 3)
usarFuncionMatematica(restar, a: 5, b: 3)
