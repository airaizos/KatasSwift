//
//  File.swift
//  
//
//  Created by Adrian Iraizos Mendoza on 29/6/24.
//

import Foundation

protocol Abierta {
    func isOpen(now: Date) -> Bool
}

protocol Tienda {
    static var abiertaSiempre: Horario { get }
    
    static var abierta_LunDom_0930a2200: Horario { get }
    
    static var abierta_LunDom_0930a1330_y_1630a2130: Horario { get }
    
    static var abierta_LunSab_0930_2200_FestivosCerrada: Horario { get }
    
    static var abierta_LunSab_0930_1330_1630_2200_FestivosCerrada: Horario { get }
    
    static var abierta_LunVie_0930a1330_y_1700a2000_Sabados_0930a1330_FestivosCerrada:  Horario { get }
    
    static var abierta_LunDom_0900a1330_y_1630a2130_JunioJulioAgosto_0915a1345_y_1700a2130_FestivosCerrada: Horario { get }
    
    static var abierta_LunVie_0915a1345_y_1700a2000_Sab_0930a1400_AgostoSabadosCerrada_FestivosCerrada: Horario { get }
    
    static var abierta_LunSab_0930a2130_JunioJulioAgosto_0915a2130_FestivosCerrada: Horario { get }
    
}

let festivos = [Date.from(year: 2024, month: 11, day: 1, hour: 15, minute: 15), Date.from(year: 2024, month: 5, day: 1, hour: 15, minute: 15)]
