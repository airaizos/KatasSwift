//
//  Ahorcado.swift
//  
//
//  Created by Adrian Iraizos Mendoza on 6/10/24.
//
/// # Kata: Ahorcado
/// ## Descripción
/// Debes crear un juego de Ahorcado, que al inicializarse recibe una palabra Objetivo, la `final class` debe incluir una función que reciba una letra y devuelva un `String` (`func intentoCon(letra: Character) -> String`):
///
/// El String debe devolver lo siguiente, dependiendo del caso:
///  - Si se ha alcanzado el número de fallos permitidos: *"Oh no! has sido ahorcado"*
///  - Si la palabra objetivo contiene o no la letra: *"Letras adivinadas: _ _ _ _ _. Prueba con otra letra. Llevas 0 fallos."*
/// - Si ha adivinado la palabra: *"Felicidades has ganado: La palabra era _ _ _ _ _. y solo con 0 fallo(s)"*
///
// Ejemplo 1:
// Ahorcado(palabraObjetivo: "Mac")
//
// intentoCon(letra: "m")
// "Letras adivinadas: M _ _. Prueba con otra letra. Llevas 0 fallos."
//
// intentoCon(letra: "z")
// "Letras adivinadas: M _ _. Prueba con otra letra. Llevas 1 fallos."
//
// intentoCon(letra: "a")
// "Letras adivinadas: M A _. Prueba con otra letra. Llevas 1 fallos."
//
// intentoCon(letra: "c")
// "Felicidades has ganado: La palabra era "MAC" y solo con 1 fallo(s)"

/// Ejecuta los tests `AhorcadoTests` y verifica que todos pasen
/// Recuerda que puedes crear todas las funciones, enumeraciones, extensiones, clases y structs que necesites.
///
import Foundation

final class Ahorcado {
        let fallosPermitidos: Int
        let listadoPalabras: [String]
        private let palabraObjetivo: String
        private var letrasRestantes: [String]
        private var letrasAdivinadas: [String] = []
        private var fallos = 0
        private var juegoPerdido: Bool = false
        
        init(fallosPermitidos: Int = 3, listadoPalabras: [String]) {
            self.fallosPermitidos = fallosPermitidos
            self.listadoPalabras = listadoPalabras
            let randomIndex = Int.random(in: 0..<listadoPalabras.count)
            self.palabraObjetivo = listadoPalabras[randomIndex].uppercased()
            self.letrasRestantes = palabraObjetivo.map { "\($0)" }
            self.letrasAdivinadas = palabraObjetivo.map { _ in "_" }
        }
    
    func intentoCon(letra: Character) -> String {
        //Escribe tu código aqui
        ""
    }
}
