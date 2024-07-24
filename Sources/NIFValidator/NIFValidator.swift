//
//  Kata: ID Validator + ID Generator.swift
//
//
//  Created by Adrian Iraizos Mendoza on 22/7/24.
//

import Foundation
/// # Kata: ValidadorID + GeneradorAleatorioID
/// ## Descripción
/// Hay dos `structs`: `ValidadorID` y `GeneradorAleatorioID`
/// El primero de ellos `ValidadorID` tiene 3 funciones estáticas.
/// La función `ìsValidNIF(_ nif: String) throws -> Bool` valida si un NIF Español es válido dada una cadena de texto, en el caso de que sea válido devuelve `true` en caso contrario `false`
///La función `isValidNIE(_ nie: String) throws -> Bool` valida si un NIE es válido dada una cadena de texto con ese formato, en caso de que sea válido devuelve `true` en caso contrario `false`.
/// La función `isValidID(_ id: String) throws -> Bool`recibe una cadena de texto con un NIF o un NIE y si es válido devuelve `true` y `false` si no lo es.
///
/// En los tres casos si hay un error en la cadena introducida debe devolver un `Error` tipo `NIFError` según sea el caso.
/// `LongitudIncorrecta`:  devuelve este error cuando la cadena introducida tiene más o menos carácteres que un formato de un NIE / NIF.
/// `NumeroIncorrecto`: devuelve este error cuando la cadena introducida no tiene un número de 8 dígitos en el caso del NIF y siete dígitos precedidos de las letras X, Y y Z en el caso de un NIE.
/// `FormatoIncorrecto`: devuelve este error cuando un **NIE** no comieza con alguna de las letras X,Y o Z.
///
/// El segundo `struct` `GeneradorAleatorioID` tiene 4 funciones estáticas.
/// La primera `generaNIFValido() throws -> String` devuelve un NIF aleatorio **Válido**
/// La segunda `generaNIFNoValido() throws -> String` devuelve un NIF aleatorio **No váido**
///La tercera `generaNIEValido() throws -> String` devuelve un NIE aleatorio **Valido**
///La cuarta `generaNIENoValido() throws -> String` devuelve un NIE aleatorio **No válido**
///En la página https://www.interior.gob.es/opencms/es/servicios-al-ciudadano/tramites-y-gestiones/dni/calculo-del-digito-de-control-del-nif-nie/ tienes información sobre el cálculo del dígito de control NIF/NIE.
///
/// `isValidNIF` **Ejemplo 1**:
// Input: 52728978Y
// Output: true
//
/// `isValidNIE` **Ejemplo 2**:
// Input: Y5738411V
// Output: true
//
/// `isValidID` **Ejemplo3**:
// Input: 64408062N
// Output: true
//
/// `generaNIFValido` **Ejemplo 4**
//  Output: 01532541M
//
/// `generaNIFNoValido` **Ejemplo 5**
//  Output: 78058233H
//
/// `generaNIEValido` **Ejemplo 6**
// Output: Z3618189H
//
/// `generaNIENoValido` **Ejemplo 7**
//  Output: Z3646110A

/// ##Instrucciones
///  Añade tu código a cada una de las funciones
///  Está añadido: el `enum NIFError`.
/// Ejecuta los tests correspondientes
//
/// ## Tips
///  Has pensado en...
///  espacios en blanco?
///  letras minúsculas?
///  existe 0% de probabilidades que se genere un NIF / NIE no válido en esas funciones?
//

/// ## Tests
/// Ejecuta los tests **NIFValidatorTests** y verifica que pasa todos los tests


enum NIFError: Error {
    case LongitudIncorrecta, NumeroIncorrecto, FormatoIncorrecto
}

struct ValidadorID {
    
   static func isValidNIF(_ nif: String) throws -> Bool {
       //Añade tu código aquí
       false
    }
    
    static func isValidNIE(_ nie: String) throws -> Bool {
        //Añade tu código aquí
        false
    }
    
    static func isValidID(_ id: String) throws -> Bool {
        //Añade tu código aquí
        false
    }
}

struct GeneradorAleatorioID {
    static func generaNIFValido() throws -> String {
        //Añade tu código aquí
          ""
    }
    
    static func generaNIFNoValido() throws -> String {
        //Añade tu código aquí
        ""
    }
    
    static  func generaNIEValido() throws -> String {
        //Añade tu código aquí
        ""
    }

    static func generaNIENoValido() throws -> String {
        //Añade tu código aquí
        ""
    }
}

