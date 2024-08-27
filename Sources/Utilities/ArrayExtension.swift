//
//  ArrayExtension.swift
//
//
//  Created by Adrian Iraizos Mendoza on 27/8/24.
//
import Foundation

/// # Kata: Array Extension
///  ## Descripción
///  Debes crear dos funciones que extiendan el tipo de dato Array para poder trabajar directamente con ellos.
///
/// La primera tiene por nombre `indicesEnOrdenCoincidente`, la cual a partir del mismo array recibe, como parámetro otro Array, y devuelve el indice de cada uno los valores del array recibido, que coinciden en el orden en que están en el mismo Array.

/// **Ejemplo 1**
/// Input:
/// Array ["A","B","C","D","E","F","G","H","I"]
/// array recibido ["A","E","I","O","U"]
/// Output:
/// [0,4,8]
/// La primera letra a buscar es la "A", que está en la posición 0, una vez encontrada, la siguiente es la "E", que está en la posición 4, la siguiente la "I", que está en el índice 8.
///
/// **Ejemplo 2**
/// Input:
/// Array [1,2,3,4,5,6,7,8,9]
/// Array recibido  [9,8,7]
/// Output:
/// [8]
/// El primer número a buscar es el 9, que está en la posición 8, no hay más valores que coincidan en el orden especificado.
///
/// ## Tips
///  Has pensado en...
///     que debe recibir tipos de datos como Int, String, Double, etc?
///     no debería recorrer todos los elementos siempre?
///     los elementos del Array deben cumplir con una condición...

/// La segunda función tiene por nombre `separa`, la cual a partir del mismo array dada una condición recibida en un closure devolverá los valores que coincidan y los que no en una tupla de dos arrays.
///
/// **Ejemplo 1**
/// Input:
/// Array `[1,2,3,4,5,6,7,8,9]`
/// Condición: `num < 5`
/// Output:
/// `([1,2,3,4],[5,6,7,8,9])`
/// Todos los números del array que han cumplido con la condición están en el primer array de la tupla, el resto en el segundo.
///
/// ## Tips
///  Has pensado en...
///         el tipo de dato condicion es un closure, una función que recibe un parámetro y tras evaluarlo devuelve un Bool`
///
/// ## Tests
/// Ejecuta los tests **ArrayExtensionTests** y verifica que pasa todos

extension Array {
    
    func indicesEnOrdenCoincidente(con array: Array) -> [Int] {
        //Escribe tu código aqui
        []
    }
    
    func separa(por condicion: (Element) -> Bool) -> (Array,Array) {
        //Escribe tu código aquí
       ([],[])
    }
}



