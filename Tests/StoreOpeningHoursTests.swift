//
//  StoreOpeningHoursTests.swift
//  
//
//  Created by Adrian Iraizos Mendoza on 29/6/24.
//

import XCTest

@testable import KatasSwift
final class StoreOpeningHoursTests: XCTestCase {
    
    func testAbiertaSiempre() {
        for i in fechas {
            XCTAssertTrue(Horario.abiertaSiempre.isOpen(now: i.0),"Debe estar abierta: \(i.1)")
        }
    }
    
    func testAbiertaLD930A22() {
        let abiertas = [
            (Date.from(year: 2024, month: 06, day: 27, hour: 17, minute: 59), "Tarde: Jue 27.Jun-17:59"),
            (Date.from(year: 2024, month: 06, day: 27, hour: 13, minute: 01), "Mañana: Jue 27.Jun-13:01"),
            (Date.from(year: 2024, month: 06, day: 25, hour: 16, minute: 45), "Verano: Mar 25.Jun-16:45"),
            (Date.from(year: 2024, month: 01, day: 25, hour: 16, minute: 45), "Invierno: Jue 25.Ene-16:45"),
            (Date.from(year: 2024, month: 05, day: 01, hour: 13, minute: 00), "FestivoMañana: Mié 1.May-13:00"),
            
            (Date.from(year: 2024, month: 02, day: 09, hour: 12, minute: 05), "ViernesMañana: Vie 9.Feb-12:05"),
            (Date.from(year: 2024, month: 06, day: 27, hour: 17, minute: 59), "Tarde: Jue 27.Jun-17:59"),
            (Date.from(year: 2024, month: 06, day: 27, hour: 13, minute: 01), "Mañana: Jue 27.Jun-13:01"),
            (Date.from(year: 2024, month: 6, day: 23, hour: 15, minute: 00), "Domingo: Dom.23.Jun-15:00"),
            (Date.from(year: 2024, month: 02, day: 10, hour: 15, minute: 00),"Sábado: Sáb 10.Feb-15:00"),
        ]
        
        let cerradas = [
            (Date.from(year: 2024, month: 11, day: 01, hour: 05, minute: 00), "FestivoNoche: Vie 1.Nov-05:00"),
            (Date.from(year: 2024, month: 06, day: 27, hour: 07, minute: 00), "Temprano: Jue 27.Jun-07:00"),
            (Date.from(year: 2024, month: 06, day: 27, hour: 23,minute: 30), "Noche: Jue 27.Jun-23:30"),
        ]
        
        XCTAssertEqual(abiertas.count + cerradas.count, fechas.count)
        
        for i in abiertas {
            XCTAssertTrue(Horario.abierta_LunDom_0930a2200.isOpen(now: i.0),"Debe estar abierta: \(i.1)")
        }
        
        for i in cerradas {
            XCTAssertFalse(Horario.abierta_LunDom_0930a2200.isOpen(now: i.0),"Debe estar cerrada: \(i.1)")
        }
    }
    
    
    
    func testAbierta_LunDom_Partido930_1330_1630_2130() {
        let abiertas = [
            (Date.from(year: 2024, month: 05, day: 01, hour: 13, minute: 00), "FestivoMañana: Mié 1.May-13:00"),
            (Date.from(year: 2024, month: 06, day: 23, hour: 13, minute: 01), "Domingo: Dom 23.Jun-13:01"),
            (Date.from(year: 2024, month: 02, day: 09, hour: 12, minute: 05), "ViernesMañana: Vie 9.Feb-12:05"),
            (Date.from(year: 2024, month: 06, day: 27, hour: 17, minute: 59), "Tarde: Jue 27.Jun-17:59"),
            (Date.from(year: 2024, month: 06, day: 27, hour: 13, minute: 01), "Mañana: Jue 27.Jun-13:01"),
            (Date.from(year: 2024, month: 08, day: 17, hour: 13, minute: 00), "SábadoMañanaAgosto: Sáb 17.Ago-13:00"),
            (Date.from(year: 2024, month: 09, day: 07, hour: 12, minute: 02), "SábadoMañana: Sáb 7.Sep-12:02"),
            (Date.from(year: 2024, month: 05, day: 12, hour: 18, minute: 00), "SábadoTarde: Sáb 12.May-18:00"),
        ]
        
        let cerradas = [
            (Date.from(year: 2024, month: 11, day: 01, hour: 05, minute: 00), "FestivoNoche: Vie 1.Nov-05:00"),
            (Date.from(year: 2024, month: 6, day: 23, hour: 15, minute: 00), "Domingo: Dom.23.Jun-15:00"),
            (Date.from(year: 2024, month: 06, day: 27, hour: 07, minute: 00), "Temprano: Jue 27.Jun-07:00"),
            (Date.from(year: 2024, month: 06, day: 27, hour: 23,minute: 30), "Noche: Jue 27.Jun-23:30"),
            (Date.from(year: 2024, month: 02, day: 10, hour: 15, minute: 00),"Sábado: Sáb 10.Feb-15:00"),
            
        ]
        
        for i in abiertas {
            XCTAssertTrue(Horario.abierta_LunDom_0930a1330_y_1630a2130.isOpen(now: i.0),"Debe estar abierta: \(i.1)")
        }
        
        for i in cerradas {
            XCTAssertFalse(Horario.abierta_LunDom_0930a1330_y_1630a2130.isOpen(now: i.0),"Debe estar cerrada: \(i.1)")
        }
        
        XCTAssertEqual(abiertas.count + cerradas.count, fechas.count)
    }
    
    func testAbierta_LunSab_0930_2200_NoFestivos() {
        let abiertas = [
            (Date.from(year: 2024, month: 08, day: 17, hour: 13, minute: 00), "SábadoMañanaAgosto: Sáb 17.Ago-13:00"),
            (Date.from(year: 2024, month: 09, day: 07, hour: 12, minute: 02), "SábadoMañana: Sáb 7.Sep-12:02"),
            (Date.from(year: 2024, month: 05, day: 11, hour: 18, minute: 00), "SábadoTarde: Sáb 11.May-18:00"),
            (Date.from(year: 2024, month: 02, day: 10, hour: 15, minute: 00), "Sábado: Sáb 10.Feb-15:00"),
            (Date.from(year: 2024, month: 02, day: 09, hour: 12, minute: 05), "ViernesMañana: Vie 9.Feb-12:05"),
            (Date.from(year: 2024, month: 06, day: 27, hour: 17, minute: 59), "Tarde: Jue 27.Jun-17:59"),
            (Date.from(year: 2024, month: 06, day: 27, hour: 13, minute: 01), "Mañana: Jue 27.Jun-13:01"),
        ]
        
        let cerradas = [
            (Date.from(year: 2024, month: 11, day: 01, hour: 05, minute: 00), "FestivoNoche: Vie 1.Nov-05:00"),
            (Date.from(year: 2024, month: 05, day: 01, hour: 13, minute: 00), "FestivoMañana: Mié 1.May-13:00"),
            (Date.from(year: 2024, month: 06, day: 23, hour: 13, minute: 01), "Domingoo: Dom 23.Jun-13:01"),
            (Date.from(year: 2024, month: 6, day: 23, hour: 15, minute: 00), "Domingo: Dom.23.Jun-15:00"),
            (Date.from(year: 2024, month: 06, day: 27, hour: 07, minute: 00), "Temprano: Jue 27.Jun-07:00"),
            (Date.from(year: 2024, month: 06, day: 27, hour: 23,minute: 30), "Noche: Jue 27.Jun-23:30"),
        ]
        XCTAssertEqual(abiertas.count + cerradas.count, fechas.count)
        
        for i in abiertas {
            XCTAssertTrue(Horario.abierta_LunSab_0930_2200_FestivosCerrada.isOpen(now: i.0),"Debe estar abierta: \(i.1)")
        }
        
        for i in cerradas {
            XCTAssertFalse(Horario.abierta_LunSab_0930_2200_FestivosCerrada.isOpen(now: i.0),"Debe estar cerrada: \(i.1)")
        }
    }
    
    func testAbierta_LunSab_0930_1330_1630_2200_NoFestivos() {
        let abiertas = [
            (Date.from(year: 2024, month: 08, day: 17, hour: 13, minute: 00), "SábadoMañanaAgosto: Sáb 17.Ago-13:00"),
            (Date.from(year: 2024, month: 09, day: 07, hour: 12, minute: 02), "SábadoMañana: Sáb 7.Sep-12:02"),
            (Date.from(year: 2024, month: 05, day: 11, hour: 18, minute: 00), "SábadoTarde: Sáb 11.May-18:00"),
            (Date.from(year: 2024, month: 02, day: 09, hour: 12, minute: 05), "ViernesMañana: Vie 9.Feb-12:05"),
            (Date.from(year: 2024, month: 06, day: 27, hour: 17, minute: 59), "Tarde: Jue 27.Jun-17:59"),
            (Date.from(year: 2024, month: 06, day: 27, hour: 13, minute: 01), "Mañana: Jue 27.Jun-13:01"),
        ]
        
        let cerradas = [
            (Date.from(year: 2024, month: 11, day: 01, hour: 05, minute: 00), "FestivoNoche: Vie 1.Nov-05:00"),
            (Date.from(year: 2024, month: 05, day: 01, hour: 13, minute: 00), "FestivoMañana: Mié 1.May-13:00"),
            (Date.from(year: 2024, month: 06, day: 23, hour: 13, minute: 01), "Domingoo: Dom 23.Jun-13:01"),
            (Date.from(year: 2024, month: 06, day: 23, hour: 15, minute: 00), "Domingo: Dom.23.Jun-15:00"),
            (Date.from(year: 2024, month: 06, day: 27, hour: 07, minute: 00), "Temprano: Jue 27.Jun-07:00"),
            (Date.from(year: 2024, month: 06, day: 27, hour: 23, minute: 30), "Noche: Jue 27.Jun-23:30"),
            (Date.from(year: 2024, month: 02, day: 10, hour: 15, minute: 00), "Sábado: Sáb 10.Feb-15:00"),
            
        ]
        XCTAssertEqual(abiertas.count + cerradas.count, fechas.count)
        
        for i in abiertas {
            XCTAssertTrue(Horario.abierta_LunSab_0930_1330_1630_2200_FestivosCerrada.isOpen(now: i.0),"Debe estar abierta: \(i.1)")
        }
        
        for i in cerradas {
            XCTAssertFalse(Horario.abierta_LunSab_0930_1330_1630_2200_FestivosCerrada.isOpen(now: i.0),"Debe estar cerrada: \(i.1)")
        }
    }
    
    func testAbierta_LunVie_0930_1330_17_00_2000_Sabados_0930_1330_NoFestivos() {
        let abiertas = [
            (Date.from(year: 2024, month: 02, day: 09, hour: 12, minute: 05), "ViernesMañana: Vie 9.Feb-12:05"),
            (Date.from(year: 2024, month: 06, day: 27, hour: 17, minute: 59), "Tarde: Jue 27.Jun-17:59"),
            (Date.from(year: 2024, month: 06, day: 27, hour: 13, minute: 01), "Mañana: Jue 27.Jun-13:01"),
            (Date.from(year: 2024, month: 08, day: 17, hour: 13, minute: 00), "SábadoMañanaAgosto: Sáb 17.Ago-13:00"),
            (Date.from(year: 2024, month: 09, day: 07, hour: 12, minute: 02), "SábadoMañana: Sáb 7.Sep-12:02"),
        ]
        
        let cerradas = [
            (Date.from(year: 2024, month: 11, day: 01, hour: 05, minute: 00), "FestivoNoche: Vie 1.Nov-05:00"),
            (Date.from(year: 2024, month: 05, day: 01, hour: 13, minute: 00), "FestivoMañana: Mié 1.May-13:00"),
            (Date.from(year: 2024, month: 06, day: 23, hour: 13, minute: 01), "Domingoo: Dom 23.Jun-13:01"),
            (Date.from(year: 2024, month: 06, day: 23, hour: 15, minute: 00), "Domingo: Dom.23.Jun-15:00"),
            (Date.from(year: 2024, month: 06, day: 27, hour: 07, minute: 00), "Temprano: Jue 27.Jun-07:00"),
            (Date.from(year: 2024, month: 06, day: 27, hour: 23, minute: 30), "Noche: Jue 27.Jun-23:30"),
            (Date.from(year: 2024, month: 05, day: 11, hour: 18, minute: 00), "SábadoTarde: Sáb 11.May-18:00"),
            (Date.from(year: 2024, month: 02, day: 10, hour: 15, minute: 00), "Sábado: Sáb 10.Feb-15:00"),
        ]
        
        XCTAssertEqual(abiertas.count + cerradas.count, fechas.count)
        
        for i in abiertas {
            XCTAssertTrue(Horario.abierta_LunVie_0930a1330_y_1700a2000_Sabados_0930a1330_FestivosCerrada.isOpen(now: i.0),"Debe estar abierta: \(i.1)")
        }
        
        for i in cerradas {
            XCTAssertFalse(Horario.abierta_LunVie_0930a1330_y_1700a2000_Sabados_0930a1330_FestivosCerrada.isOpen(now: i.0),"Debe estar cerrada: \(i.1)")
        }
    }
    
    func testAbierta_LunDom_0900_1330_1630_21_30_Junio_Julio_Agosto_0915_1345_1700_2130_NoFestivos() {
        
        let abiertas = [
            (Date.from(year: 2024, month: 02, day: 09, hour: 12, minute: 05), "ViernesMañana: Vie 9.Feb-12:05"),
            (Date.from(year: 2024, month: 06, day: 27, hour: 17, minute: 59), "Tarde: Jue 27.Jun-17:59"),
            (Date.from(year: 2024, month: 06, day: 27, hour: 13, minute: 01), "Mañana: Jue 27.Jun-13:01"),
            (Date.from(year: 2024, month: 06, day: 23, hour: 13, minute: 01), "Domingoo: Dom 23.Jun-13:01"),
            (Date.from(year: 2024, month: 08, day: 17, hour: 13, minute: 40), "SábadoMañanaAgosto: Sáb 17.Ago-13:40"),
            (Date.from(year: 2024, month: 09, day: 07, hour: 12, minute: 02), "SábadoMañana: Sáb 7.Sep-12:02"),
            (Date.from(year: 2024, month: 05, day: 11, hour: 18, minute: 00), "SábadoTarde: Sáb 11.May-18:00"),
        ]
        
        let cerradas = [
            (Date.from(year: 2024, month: 11, day: 01, hour: 05, minute: 00), "FestivoNoche: Vie 1.Nov-05:00"),
            (Date.from(year: 2024, month: 05, day: 01, hour: 13, minute: 00), "FestivoMañana: Mié 1.May-13:00"),
            (Date.from(year: 2024, month: 06, day: 23, hour: 15, minute: 00), "Domingo: Dom.23.Jun-15:00"),
            (Date.from(year: 2024, month: 06, day: 27, hour: 07, minute: 00), "Temprano: Jue 27.Jun-07:00"),
            (Date.from(year: 2024, month: 06, day: 27, hour: 23, minute: 30), "Noche: Jue 27.Jun-23:30"),
            (Date.from(year: 2024, month: 02, day: 10, hour: 13, minute: 40), "Sábado: Sáb 10.Feb-13:40"),
        ]
        
        XCTAssertEqual(abiertas.count + cerradas.count, fechas.count)
        
        for i in abiertas {
            XCTAssertTrue(Horario.abierta_LunDom_0900a1330_y_1630a2130_JunioJulioAgosto_0915a1345_y_1700a2130_FestivosCerrada.isOpen(now: i.0),"Debe estar abierta: \(i.1)")
        }
        
        for i in cerradas {
            XCTAssertFalse(Horario.abierta_LunDom_0900a1330_y_1630a2130_JunioJulioAgosto_0915a1345_y_1700a2130_FestivosCerrada.isOpen(now: i.0),"Debe estar cerrada: \(i.1)")
        }
    }
    
    func testAbierta_LunVie_0915_1345_1700_2000_Sab_0930_1400ExceptoAgosto_NoFestivos() {
        
        let abiertas = [
            (Date.from(year: 2024, month: 02, day: 09, hour: 12, minute: 05), "ViernesMañana: Vie 9.Feb-12:05"),
            (Date.from(year: 2024, month: 06, day: 27, hour: 17, minute: 59), "Tarde: Jue 27.Jun-17:59"),
            (Date.from(year: 2024, month: 06, day: 27, hour: 13, minute: 01), "Mañana: Jue 27.Jun-13:01"),
            (Date.from(year: 2024, month: 09, day: 07, hour: 12, minute: 02), "SábadoMañana: Sáb 7.Sep-12:02"),
            (Date.from(year: 2024, month: 02, day: 10, hour: 13, minute: 40), "Sábado: Sáb 10.Feb-13:40"),
        ]
        
        let cerradas = [
            (Date.from(year: 2024, month: 11, day: 01, hour: 05, minute: 00), "FestivoNoche: Vie 1.Nov-05:00"),
            (Date.from(year: 2024, month: 05, day: 01, hour: 13, minute: 00), "FestivoMañana: Mié 1.May-13:00"),
            (Date.from(year: 2024, month: 06, day: 23, hour: 13, minute: 01), "Domingoo: Dom 23.Jun-13:01"),
            (Date.from(year: 2024, month: 06, day: 23, hour: 15, minute: 00), "Domingo: Dom.23.Jun-15:00"),
            (Date.from(year: 2024, month: 06, day: 27, hour: 07, minute: 00), "Temprano: Jue 27.Jun-07:00"),
            (Date.from(year: 2024, month: 06, day: 27, hour: 23, minute: 30), "Noche: Jue 27.Jun-23:30"),
            (Date.from(year: 2024, month: 05, day: 11, hour: 18, minute: 00), "SábadoTarde: Sáb 11.May-18:00"),
            (Date.from(year: 2024, month: 08, day: 17, hour: 13, minute: 40), "SábadoMañanaAgosto: Sáb 17.Ago-13:40"),
        ]
        
        XCTAssertEqual(abiertas.count + cerradas.count, fechas.count)
        
        for i in abiertas {
            XCTAssertTrue(Horario.abierta_LunVie_0915a1345_y_1700a2000_Sab_0930a1400_AgostoSabadosCerrada_FestivosCerrada.isOpen(now: i.0),"Debe estar abierta: \(i.1)")
        }
        
        for i in cerradas {
            XCTAssertFalse(Horario.abierta_LunVie_0915a1345_y_1700a2000_Sab_0930a1400_AgostoSabadosCerrada_FestivosCerrada.isOpen(now: i.0),"Debe estar cerrada: \(i.1)")
        }
    }
    
    func testAbierta_LunSab_0930_2130_NoFestivos_Jun_Jul_Ago_0915_2130() {
        let abiertas = [
            (Date.from(year: 2024, month: 09, day: 07, hour: 12, minute: 02), "SábadoMañana: Sáb 7.Sep-12:02"),
            (Date.from(year: 2024, month: 02, day: 10, hour: 13, minute: 40), "Sábado: Sáb 10.Feb-13:40"),
            (Date.from(year: 2024, month: 05, day: 11, hour: 18, minute: 00), "SábadoTarde: Sáb 11.May-18:00"),
            (Date.from(year: 2024, month: 02, day: 09, hour: 12, minute: 05), "ViernesMañana: Vie 9.Feb-12:05"),
            (Date.from(year: 2024, month: 06, day: 27, hour: 17, minute: 59), "Tarde: Jue 27.Jun-17:59"),
            (Date.from(year: 2024, month: 06, day: 27, hour: 13, minute: 01), "Mañana: Jue 27.Jun-13:01"),
            (Date.from(year: 2024, month: 08, day: 17, hour: 09, minute: 20), "SábadoMañanaAgosto: Sáb 17.Ago-09:20"),
        ]
        
        let cerradas = [
            (Date.from(year: 2024, month: 11, day: 01, hour: 05, minute: 00), "FestivoNoche: Vie 1.Nov-05:00"),
            (Date.from(year: 2024, month: 05, day: 01, hour: 13, minute: 00), "FestivoMañana: Mié 1.May-13:00"),
            (Date.from(year: 2024, month: 06, day: 23, hour: 13, minute: 01), "Domingoo: Dom 23.Jun-13:01"),
            (Date.from(year: 2024, month: 06, day: 23, hour: 15, minute: 00), "Domingo: Dom.23.Jun-15:00"),
            (Date.from(year: 2024, month: 06, day: 27, hour: 07, minute: 00), "Temprano: Jue 27.Jun-07:00"),
            (Date.from(year: 2024, month: 06, day: 27, hour: 23, minute: 30), "Noche: Jue 27.Jun-23:30"),
        ]
        XCTAssertEqual(abiertas.count + cerradas.count, fechas.count)
        
        for i in abiertas {
            XCTAssertTrue(Horario.abierta_LunSab_0930a2130_JunioJulioAgosto_0915a2130_FestivosCerrada.isOpen(now: i.0),"Debe estar abierta: \(i.1)")
        }
        
        for i in cerradas {
            XCTAssertFalse(Horario.abierta_LunSab_0930a2130_JunioJulioAgosto_0915a2130_FestivosCerrada.isOpen(now: i.0),"Debe estar cerrada: \(i.1)")
        }
    }
}


let fechas = [
    //Festivos
    (Date.from(year: 2024, month: 11, day: 01, hour: 05, minute: 00), "FestivoNoche: Vie 1.Nov-05:00"),
    (Date.from(year: 2024, month: 05, day: 01, hour: 13, minute: 00), "FestivoMañana: Mié 1.May-13:00"),
    
    //Domingo
    (Date.from(year: 2024, month: 06, day: 23, hour: 13, minute: 01), "Domingoo: Dom 23.Jun-13:01"),
    (Date.from(year: 2024, month: 06, day: 23, hour: 15, minute: 00), "Domingo: Dom.23.Jun-15:00"),
    
    //Temprano o tarde
    (Date.from(year: 2024, month: 06, day: 27, hour: 07, minute: 00), "Temprano: Jue 27.Jun-07:00"),
    (Date.from(year: 2024, month: 06, day: 27, hour: 23, minute: 30), "Noche: Jue 27.Jun-23:30"),
    
    //Sábados
    (Date.from(year: 2024, month: 09, day: 07, hour: 12, minute: 02), "SábadoMañana: Sáb 7.Sep-12:02"),
    (Date.from(year: 2024, month: 02, day: 10, hour: 13, minute: 40), "Sábado: Sáb 10.Feb-13:40"),
    (Date.from(year: 2024, month: 05, day: 11, hour: 18, minute: 00), "SábadoTarde: Sáb 11.May-18:00"),
    
    
    //Abiertas
    (Date.from(year: 2024, month: 02, day: 09, hour: 12, minute: 05), "ViernesMañana: Vie 9.Feb-12:05"),
    (Date.from(year: 2024, month: 06, day: 27, hour: 17, minute: 59), "Tarde: Jue 27.Jun-17:59"),
    (Date.from(year: 2024, month: 06, day: 27, hour: 13, minute: 01), "Mañana: Jue 27.Jun-13:01"),
    
    //Verano
    (Date.from(year: 2024, month: 08, day: 17, hour: 13, minute: 40), "SábadoMañanaAgosto: Sáb 17.Ago-13:40"),
]
 
let festivos = [Date.from(year: 2024, month: 11, day: 1, hour: 15, minute: 15), Date.from(year: 2024, month: 5, day: 1, hour: 15, minute: 15)]

