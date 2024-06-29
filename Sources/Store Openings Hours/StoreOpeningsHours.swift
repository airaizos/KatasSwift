//
//  StoreOpeningsHours.swift
//
//
//  Created by Adrian Iraizos Mendoza on 29/6/24.
//

import Foundation

// #Kata: StoreOpeningsHours
///## Descripción
/// La Avenida de los Bucles Infinitos es conocida por tener una gran cantidad de tiendas desde ropa, artículos de cocina, golosinas, frutas y demás. Cada tienda tiene su propio horario, por ejemplo:
///SwiftSnacksAndCode está abierta de lunes a viernes de 9:00 a 14:00 y de 17:00 a 20:30 y cerrada los días festivos.
///Optionals & Oranges abre de lunes a sábado de 9:15 a 21:15 y cerrada los días festivos.
///ByteSizedSwifties abre de lunes a domingo de 10:00 a 22:00, los días festivos incluidos.
///
///Como desarrollador especialista en el lenguaje Swift tenes el reto de crear el `struct`**Horario**. el cual se conforma con el protocolo **Abierta**, que incluye una única función: Devolver  **true** si la tienda está abierta o **false** si está cerrada al pasarle una fecha y hora determinada, el tipo de dato es `Date`.
///
///
// Ejemplos:
//  Tuple Treasures: Abierta de lunes a domingo las 24 horas del día, incluidos festivos.
//  tupleTreasures.isOpen(now: lunes0700h) = true
//
//  ClosureClothingCo. Abierta de lunes a viernes de 09:00 a 14:: y de 17:00 a 20:30. Los días festivos cerrada.
//  closureClothingCo.isOpen(now: sabado1400h) = false
//
///## Instrucciones
//  Añade las propiedades y structs que consideres necesarios.
//  La función isOpen debe aceptar una fecha determinada y calcular si la tienda está abierta o no.
//  En la extension de Horario añade las propiedades estáticas que cumplan con los horarios indicados.
//

//  Los horarios pueden tener una o varias de las siguientes características:
//  1. Abrir todos o algunos días de la semana
//  2. Tener horario ininterrumpido u horario partido
//  3. Los sábados es posible que el horario sea distinto o no abra
//  4. Algunas tiendas abren los días festivos
//  5. En algunos meses el horario puede ser diferente. Por ejemplo Agosto
//
///   # Tips
//  Puedes crear todos los structs que necesites
//  Puedes crear todas las extensiones que necesites
//  Comienza con los casos más sencillos y continua de maneera incremental
//  Observa el tiempo que tardan los tests en ejecutarse
//
/// # Tests
/// Ejecuta los tests de StoreOpeningHoursTests
//  Hay 9 tests que deben de pasar.


struct Horario: Abierta {
    //Añade aqui las propiedes y structs que consideres necesarios
    
    func isOpen(now: Date) -> Bool {
        // Escribe tu código aquí
        true
    }
}

extension Horario: Tienda {
    //Abierta de lunes a domingo 24 h, incluso festivos.
    public static let abiertaSiempre = Horario()
    
    //Abierta de lunes a domingo de 09:30 a 22:00 h, incluso festivos.
    public static let abierta_LunDom_0930a2200 = Horario()
    
    //Abierta de lunes a domingo de 09:30 a 13:30 y de 16:30 a 21:30 h, incluso festivos.
    public static let abierta_LunDom_0930a1330_y_1630a2130 = Horario()
    
    //Abierta de lunes a sábado de 9:30 a 22:00. Los días festivos cerrada.
    public static let abierta_LunSab_0930_2200_FestivosCerrada = Horario()
    
    //Abierta de lunes a sábado de 09:30 a 13:30 y de 16:30 a 22:00. Los días festivos cerrada.
    public static let abierta_LunSab_0930_1330_1630_2200_FestivosCerrada = Horario()
    
    //Abierta de lunes a viernes de 09:30 a 13:30 y de 17:00 a 20:00. Sábados de 09:30 a 13:30. Los días festivos cerrada.
    public static let abierta_LunVie_0930a1330_y_1700a2000_Sabados_0930a1330_FestivosCerrada =  Horario()
    
    //Abierta de lunes a domingo de 09:00 a 13:30 y de 16:30 a 21:30. Durante Junio, Junio y Agosto el horario es de 09:15 a 13:45 y de 17:00 a 21:30. Los días festivos cerrada.
    public static let abierta_LunDom_0900a1330_y_1630a2130_JunioJulioAgosto_0915a1345_y_1700a2130_FestivosCerrada = Horario()
    
    //Abierta de lunes a viernes de 09:15 a 13:45 y de 17:00 a 20:00. Sábados de 09:30 a 14:00. En agosto los sábados cerrada. Los días festivos cerrada.
    public static let abierta_LunVie_0915a1345_y_1700a2000_Sab_0930a1400_AgostoSabadosCerrada_FestivosCerrada = Horario()
    
    //Abierta de lunes a sábado de 09:30 a 21:30. Durante Junio, Julio y Agosto el horario es de 09:15 a 21:30. Los días festivos cerrada.
    public static let abierta_LunSab_0930a2130_JunioJulioAgosto_0915a2130_FestivosCerrada = Horario()
}



