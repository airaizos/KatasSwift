//
//  File.swift
//
//
//  Created by Adrian Iraizos Mendoza on 11/8/24.
//

import Foundation

/// # Kata: Countersign
///  ## Descripción
/// Eres parte de un equipo de espionaje, y tu misión, si decides aceptarla, es crear un generador de palabras de acceso, un generador de passwords. Los passwords dependiendo de la misión, pueden tener solo letras mayúsculas y minúsculas, conocido como Couplet. Mayúsculas, minúsiculas y números, conocido como Triplet, o bien que además de mayúsculas, minúsculas y números, incluya símbolos, este tipo de password se le conoce como Quadruplet. Los 3 tipos deben estar agrupados en una única función que permita elegir el tipo y los caracteres que debe contener ese password.
///
///Tendrás que generar el código necesario para que las funciones generen un password. Deben cumplir con los siguientes estándares de seguridad:
/// **No pueden tener espacios en blanco**. De lo contrario saltará un error
/// **Un caracter no puede repetirse consecutivamente** No puedes tener un password que tenga por ejemplo: QWerTYYu, porque YY lo invalidaría.
/// **Deben cumplir con cierta longitud** Como mínimo 4 caracteres y como máximo 32, de lo contrario arrojará el error correspondiente.
///
/// Los datos que recibirás son:
/// **PasswordType**, que tipo de password se pide. Couplet, Triplet o Quadruplet
/// **Longitud**, es el número de caracteres que debe contener ese password.
/// 
/// La función debe lanzar un error cuando:
///  No se cumpla con la longitud mínima de 6 -> `CountersignError.min`
///  No se cumpla con la longitud máxima de 32-> `CountersignError.max`
///  No se cumpla con la longitud máxima de -> `CountersignError.max`
///
// Ejemplo 1:
// Input:
// tipo: .couplet
// longitud: 8

//Output:
// AbCdEfGH

// Ejemplo 2:
// Input:
// tipo: .quadruplet
// longitud: 16
//
//Output
// s4#%t_U+z)195Q3=

/// Ejecuta los tests, pero *¡cuidado!* deberás también la misión PasswordValidator
/// Recuerda que puedes crear todas las funciones, extensiones, clases y structs que necesites.

enum CountersignError: Error {
    case min, max
}

struct Countersign {
    
    enum PasswordType {
        case couplet //Mayúsculas, Mininúsculas
        case triplet //Mayúsculas, Mininúsculas, Números
        case quadruplet //Mayúsculas, Mininúsculas, Números, Símbolos
    }
    
    func checkLength(_ length: Int) throws {
        //Escribe tu código aquí
    }
    
    
    func generaPassword(tipo: PasswordType, longitud: Int) throws -> String {
        //Escribe tu código aquí
       ""
    }
    
    func generaCouplet(longitud: Int) throws -> String {
        //Escribe tu código aquí
        ""
    }
    
    func generaTriplet(longitud: Int) throws -> String {
        //Escribe tu código aquí
        ""
    }
    
    func generaQuadruplet(longitud: Int) throws -> String {
        //Escribe tu código aquí
        ""
    }
}
