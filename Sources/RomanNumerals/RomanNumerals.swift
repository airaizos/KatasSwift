//
//  RomanNumerals.swift
//
//
//  Created by Adrian Iraizos Mendoza on 4/7/24.
//

import Foundation

// #Kata: Roman Numerals
///## Descripción
/// Te encuentras en  un proyecto didáctico para niños pequeños que están aprendiendo los números romanos. Tu misión, si decides aceptarla, es crear dos funciones:
/// La primera es crear un método que reciba un número entero y devuelva ese número en su versión en número romano con tipo de dato `String`.
/// La segunda es crear el método inverso, recibir una cadana con un número romano y devolver un número entero como tipo de dato `Int`.
///
///
///
// ## Ejemplos:
/// **De romano a decimal**
/// Input: "V"
/// Output: 5
///
/// Input: "MMDLVIII"
/// Output: 2558
///
///**De decimal a romano**
///
/// Input: 23
/// Output: XXIII
///
/// Input: 3000
/// Output: MMM
///
///## Instrucciones
///  Añade tu código a las dos funciones que están incluidas en la clase.
/// Ambas pueden lanzar errores con lo cual utiliza los enums correspondientes, no deberías devovler `nil` en ningún caso.
/// En la función `convierteDeRomanoADecimal` incluye los errores del enum `ErrorRomanos` y en la funcion `convierteDeDecimalARomano` incluye los errores del enum `ErrorDecimal`
///
///   # Tips
/// Valida siempre que los inputs sean correctos.
/// Ten en cuenta que el número más grande en números romanos es 3.999 y no existen los números negativos.
/// Ten en cuenta que los símbolos V, L y D no pueden escribirse dos veces seguidas.
/// El símbolo I sólo puede restar a V o X, y no puede repetirse más de tres veces seguidas.
/// El símbolo X solo resta a L y C.
/// El símbolo C solo resta a D y M.
/// El símbolo V no debe repetirse y siempre suma.
/// Puedes añadir extensiones
/// Comienza con la validación de datos y lanza el error correspondiente
/// 
/// # Tests
/// Ejecuta los tests de RomanNumerals
/// Los test evaluan los errores que lanza la función en el caso de introducir datos no válidos.



struct RomanNumerals {
    
    func convierteDeRomanoADecimal(_ romano: String) throws -> Int {
        -Int.max
    }
    
    func convierteDeDecimalARomano(_ num: Int) throws -> String {
        ""
    }
}

enum ErrorRomanos: Error {
    case cadenaVacia, noRomano, masDeTres, incoherencia
    
    var description:String {
        switch self {
        case .cadenaVacia: return "La cadena está vacía"
        case .noRomano: return "No es un número romano"
        case .masDeTres: return "Un mismo símbolo no puede escribirse más de TRES veces seguidas"
        case .incoherencia: return "IM,ID,IC,IL,XM,XD,VX,VV,LL,DD no son válidos"
        }
    }
    
}

enum ErrorDecimal:Error {
    case negativo, desbordamiento
    
    var description: String {
        switch self {
        case .negativo: return "Solo se aceptan números positivos"
        case .desbordamiento: return "El número debe ser menor a 4000"
        }
    }
}
