//Programa diseñado por: Cristian Jesus Garcia Tapia
import Foundation
func mostrarMenu() {
    print("Menu de areas")
    print("Por favor introduce una opción:")
    print("1. Área del cuadrado")
    print("2. Área del rectángulo")
    print("3. Área del triángulo")
    print("4. Área del círculo")
    print("5. Salir")
}

func calcularAreaCuadrado() {
    print("Introduce el valor del lado:")
    if let ladoString = readLine(), let lado = Double(ladoString) {
        let area = lado * lado
        print("El área del cuadrado es: \(area)")
    } else {
        print("Ingresa un valor válido para el lado.")
    }
}

func calcularAreaRectangulo() {
    print("Introduce el valor del lado 1:")
    if let lado1String = readLine(), let lado1 = Double(lado1String) {
        print("Introduce el valor del lado 2:")
        if let lado2String = readLine(), let lado2 = Double(lado2String) {
            let area = lado1 * lado2
            if lado1 == lado2 {
                print("Las medidas que ingresaste son de un cuadrado.")
            } else {
                print("El área del rectángulo es: \(area)")
            }
        } else {
            print("Ingresa un valor válido para el lado 2.")
        }
    } else {
        print("Ingresa un valor válido para el lado 1.")
    }
}

func calcularAreaTriangulo() {
    print("Introduce el valor de la base:")
    if let baseString = readLine(), let base = Double(baseString) {
        print("Introduce el valor de la altura:")
        if let alturaString = readLine(), let altura = Double(alturaString) {
            let area = (base * altura) / 2
            print("El área del triángulo es: \(area)")
        } else {
            print("Ingresa un valor válido para la altura.")
        }
    } else {
        print("Ingresa un valor válido para la base.")
    }
}

func calcularAreaCirculo() {
    print("Introduce el valor del radio:")
    if let radioString = readLine(), let radio = Double(radioString) {
        let area = Double.pi * pow(radio, 2)
        print("El área del círculo es: \(area)")
    } else {
        print("Ingresa un valor válido para el radio.")
    }
}

var opcion: Int?

repeat {
    mostrarMenu()

    if let opcionString = readLine(), let opcionInt = Int(opcionString) {
        opcion = opcionInt

        switch opcionInt {
        case 1:
            calcularAreaCuadrado()
        case 2:
            calcularAreaRectangulo()
        case 3:
            calcularAreaTriangulo()
        case 4:
            calcularAreaCirculo()
        case 5:
            opcion = nil
            print("¡Hasta luego!")
        default:
            print("Opción inválida. Por favor, selecciona una opción válida.")
        }

        if opcion != nil {
            print("\nPresiona ENTER para continuar...")
            _ = readLine()
            print("\n")
        }

    } else {
        print("Opción inválida. Por favor, selecciona una opción válida.")
    }

} while opcion != nil
