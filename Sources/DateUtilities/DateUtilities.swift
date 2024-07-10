//
//  File.swift
//  
//
//  Created by Adrian Iraizos Mendoza on 9/7/24.
//
/// #Kata: Date Utilities
///## Descripción
/// Tienes que elegir un día de la semana, en el que cada semana de un mes en especifico, dedicarás al desarrollo de proyecto de app.
/// Queires saber cuántos días del mes le dedicarás en total.
///
//
// Ejemplo 1:
//  Input:
//      Dia de la semana: Miércoles (3)
//      Mes y año: 7 2024 (Julio 20224)
//  Output:
//      5
//
//  Ejemplo 2:
// Input:
//      Dia de la semana: Sábado (7)
//      Mes y año: 6 2015 (Junio 2015)
//  Output:
//  4
//
/// Adicionalmente quieres saber cuántos dias de la semana hay en un periodo de tiempo.
/// Para ello creas otra función específica para hacer el mismo cálculo en el que se introducen la fecha de incio del periodo y la fecha fin.
/// 
// Ejemplo 1:
//  Input:
//      Dia de la semana: Miércoles (3)
//      Fecha inicio: 2 7 2024 (2 Julio 2024)
//      Fech fin: 5 9 2024 (5 Septiembre 2024)
//  Output:
//      10
//
//  Ejemplo 2:
// Input:
//      Dia de la semana: Sábado (7)
//      Fecha inicio: 1 2 2023 (1 Febrero 2023)
//      Fech fin: 28 Febrero 2024 (28 Febrero 2024)
//  Output:
//      56
//
///## Instrucciones
/// Añade tu códico a la función `func cantidadDeDiasDe(diaSemana: Int, enAño: Int, yMes: Int) throws -> Int`
/// El dia de la semana es un `Int` donde el 1 es Domingo y el sábado 7
/// El año es `Int` con el formato `yyy`
/// El es es `Int` con el formato `m`
/// El año introducido debe ser igual o superior a 1970 o menor o igual a 2100.
///
////// Añade tu códico a la función `func cantidadDeDiasDe(diaSemana: Int, entre fechaInicial: Date, fechafinal: Date) throws -> Int`
/// El dia de la semana es un `Int` donde el 1 es Domingo y el sábado 7
/// La fecha inicial es un tipo `Date`
/// La fecha final es un tipo `Date`
/// La fecha inicial debe ser igual o superior al 1 de enero de 1970 y menor o igual al 31 de diciembre del año 2100.
///
///Ambas funciones deben lanzar errores tipo `ErrorDateUtilities` según se el caso.
///
///   # Tips
///##  ¿Has pensado en...
/// validar el día de la semana instoducido?
/// validar el mes y año?
/// validar la fecha incial y final
/// y si el año es bisiesto?
///
///## Tests
///  Ejecuta los tests Date Utilities y verifica que la función pasa todos los tests
///
///
import Foundation


final class DateUtilities {
    
    func cantidadDeDiasDe(diaSemana: Int, enMes: Int, yAño: Int) throws -> Int {
        //Escribe tu código aquí
        -Int.max
        
    }
    
    
    func cantidadDeDiasDe(diaSemana: Int, entre fechaInicial: Date, fechafinal: Date) throws -> Int {
        //Escribe tu código aquí
        -Int.max
    }
}


enum ErrorDateUtilities: Error {
    case badDiaSemana, badAño, badMes, badDate,badPeriod
    
    var description: String {
        switch self {
        case .badDiaSemana: return "El dia de la semana debe ser entre 1 (Doming) y 7 (Sábado)"
        case .badAño: return "Los años válidos son entre 1970 y 2100"
        case .badMes: return "Los meses deben ser entre 1 (Enero)  y 12 (Diciembre)"
        case .badDate:  return "Error al generar fechas"
        case .badPeriod: return "La fecha inicial debe ser inferior a la fecha final"
        }
    }
}

