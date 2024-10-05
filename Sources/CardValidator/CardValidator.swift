//
//  File.swift
//
//
//  Created by Adrian Iraizos Mendoza on 9/9/24.
//

/// # Kata: Card Validator
/// ## Descripción
/// Te han asignado la tarea de escribir el código de un validador de los números de tarjetas de banco. Para la validación tienes que utilizar el algoritmo de Luhn. https://es.wikipedia.org/wiki/Algoritmo_de_Luhn
/// https://abrir-empresa.com/el-algoritmo-de-luhn-una-herramienta-esencial-para-la-verificacion-de-numeros-de-tarjetas-de-credito/
///
/// Los datos que recibirás son:
/// **Número de tarjeta**, 16 dígitos, divididos en 4 números de 4 dígitos
///
/// La función debe lanzar error cuando:
///  El grupo de números no tiene 4 dígitos.
///  El número sea negativo
///
///
// Ejemplo 1:
// Input:
// 1234 5678 9101 1121
//
// Output:
//  False
// No es un número de tarjeta válido

// Ejemplo 2:
// Input:
//  4549 6489 -1064 1121
// Output:
// CardError.negativo
// Lanza el tipo de error CardError


/// Ejecuta los tests `CardValidatorTests` y verifica que todos pasen
/// Recuerda que puedes crear todas las funciones, extensiones, clases y structs que necesites.
///

import Foundation

enum CardError: Error {
    case negativo, formato
}
struct BankCard {
    let group1: String
    let group2: String
    let group3: String
    let group4: String
    
    init(_ group1: String,_ group2: String,_ group3: String,_ group4: String) {
        self.group1 = group1
        self.group2 = group2
        self.group3 = group3
        self.group4 = group4
    }
    
}

struct CardValidator {
    func validate(bankCard: BankCard) throws -> Bool {
        //Escribe aquí tu código.
        
        return false
    }
}
