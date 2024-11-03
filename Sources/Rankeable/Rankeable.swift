//
//  Rankeable.swift
//
//
//  Created by Adrian Iraizos Mendoza on 3/11/24.
//

import Foundation

/// # Kata: Rankeable
/// ## Descripción
/// La tarea es crear una función que extienda el tipo `Array` y que permita obtener la posición de un elemento a partir de una propiedad de tipo Double. La función es rank y recibe un Elemento y devuelve un Int opcional. 
///
/// **Ejemplo 1**:
/// equipos = [Equipo("Amarillo",puntos: 5),Equipo("Azul",puntos: 1),Equipo("Verde",puntos: 7),Equipo("Naranja",puntos: 4)]
/// **Uso**
///  equipos.rank(amarillo)
/// **Output:**
///  2
/// **Ejemplo 2**:
/// series = [Serie("That's 70 show",rating: 6.9), Serie("Dr. House",rating: 6.9), Serie("Doogie Howser, M.D",rating: 4.9)]
/// **Uso**
///  series.rank(Doogie Howser)
/// **Output:**
/// 3
///
/// #Tips
/// Has pensado en...
/// que pasaría si dos elementos tienen el mismo valor
/// solo aplicaría para ciertos arrays
///
/// ## Tests
/// Ejecuta los test **RankeableTests** y verifica que pasa todos


protocol Rankeable {
    var points: Double { get }
}

extension Array {
    func rank(_ element: Element) -> Int? {
        // Escribe aquí tu código
        -99
    }
}
