//
//  File.swift
//  
//
//  Created by Adrian Iraizos Mendoza on 16/8/24.
//

import Foundation

/// # Kata: PasswordValidator
///  ## Descripción
/// Eres parte de un equipo de espionaje, y tu misión, si decides aceptarla, es crear un método que valide que los passwords generados por uno de tus compañeros cumplen con ciertos requisitos de seguridad. Te será entregado un tipo de password, que puede ser un *couplet*, que es un password formado por mayúsculas y minúsculas. Un *triplet* un password que debe contener mayúsculas, minúsculas y números, o bien un *quadruplet*, que debe incluir mayúsculas, minúsculas, números y símbolos.
///
/// Deberas asegurar que se cumplan los siguientes estándares de seguridad:
///  **Longitud** Como mínimo 4 caracteres y como máximo 32, de lo contrario arrojará *tooShort* o *tooLong*.
///   **Tener al menos un caracter de cada: mayúsculas, minúsculas, números, símbolos** segun sea el caso.
///   **Ningún caracter debe repetirse consecutivamente**
///   **No debe tener espacios en blanco**
///   **El password debe ser de al menos 6 caracteres y tener como máximo 32**
///
/// Los datos que recibirás son:
/// **text**, es el password a validar
/// 
/// La función debe lanzar un error cuando:
///  No se cumpla con la longitud mínima  -> `PasswordError.tooShort`
///  No se cumpla con la longitud máxima -> `PasswordError.tooLong`
///  El texto tenga espacios en blanco -> `PasswordError.whiteSpaces`
///  El texto tenga el mismo caracter 2 veces consecutivas -> `PasswordError.consecutiveCharacters
///  El texto debe no tenga al menos una mayúscula -> `PasswordError.noUppercased`
///  El texto debe no tenga al menos una minúscula -> `PasswordError.noLowercased`
///  En el caso de los *triplets*  y *quadruplets* el texto no tenga al menos un número -> `PasswordError.noNumbers`
///  En el caso delos *quadruplets* el texto no tenga al menos un símbolo -> `PasswordError.noSymbols`
///
// Ejemplo 1:
// Input
// tipo: Couplet
// texto: AbCdEf

//Output:
// true

// Ejemplo 2:
// Input
// tipo: Quadruplet
// texto: Ab3%Ef9)
//
//Output
// true

/// Ejecuta los tests  y descubre como avanzas en tu misión
/// Recuerda que puedes crear todas las funciones, extensiones, clases y structs que necesites.

enum PasswordError: Error {
    case tooShort, tooLong, noNumbers, noUppercased, noLowercased, noSymbols, consecutiveCharacters, whiteSpaces
}

struct PasswordValidator {
        
    func isACouplet(_ text: String) throws -> Bool {
        //Escribe tu código aquí
        return false
    }
    
    func isATriplet(_ text: String) throws -> Bool {
        //Escribe tu código aquí
        return false
    }
    
    func isAQuadruplet(_ text: String) throws -> Bool {
        //Escribe tu código aquí
        return false
    }
    
    func isValidLength(_ text: String, length: Int) throws -> Bool {
        //Escribe tu código aquí
        return false
    }
    
}
