//
//  ChocoFuncReturn.swift
//
//
//  Created by Adrian Iraizos Mendoza on 27/7/24.
//
/// # Kata: ChocoFuncReturn
///  ## Descripción
///  La empresa **ChocoFunc** tiene por tiempo limitado una promoción en la que, puedes obtener gratis una chocolatina, entregando cierto número de envoltorios de su chocolatina más famosa **ChocoFuncReturn**.
/// Tu misión será obtener el mayor número de chocolatinas para cierto presupuesto, haciendo uso de la promoción.
///
/// Los datos que recibirás son: 
/// **Presupuesto**, cuánto dinero tienes para comprar tus chocolatinas favoritas.
/// **Precio**, es el precio de cada chocolatina.
/// **Envoltorios**, es la cantidad de envoltorios que **ChocoFunc** te pedirá para darte una nueva chocolatina.
/// 
/// La función debe lanzar un error cuando:
///  El presupuesto sea incoherente.
///  El precio sea incoherente.
///  Los envoltorios  sean menores o igual a 1
///
// Ejemplo 1:
// Input:
// Presupuesto: 10,00 €
// Precio: 3,00 €
// Envoltorios: 3

//Output:
// 4
// Puedes comprar 3 chocolatinas con tu presupuesto y te quedarán 3 envoltorios. Los cuales canjeas por una chocolatina más.

// Ejemplo 2:
// Input:
// Presupuesto: -100.00€
// Precio: 5€
// Envolorios: 3
//
//Output
// ChocoError: Presupuesto

import Foundation

enum ChocoError: Error {
    case prespuesto, precio, envoltorios
}

struct ChocoFunc {
    
    static func obtenerChocolatinas(prespuesto: Double, precio: Double, envoltorios: Int) throws -> Int {
        // Escribe tu código aquí
        -Int.max
    }
}
