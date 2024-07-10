//
//  DateUtilitiesTests.swift
//
//
//  Created by Adrian Iraizos Mendoza on 9/7/24.
//

import XCTest

@testable import KatasSwift
final class DateUtilitiesTests: XCTestCase {
    
    var sut: DateUtilities!
    
    override func setUpWithError() throws {
        sut = DateUtilities()
    }
    
    override func tearDownWithError() throws {
        sut = nil
    }
    
    //MARK: Dias de la semana mes
    func testHayCincoMiercolesEnJulio2024() throws {
        let diaSem = 3
        let año = 2024
        let mes = 7
        let result = try sut.cantidadDeDiasDe(diaSemana: diaSem, enMes: mes, yAño: año)
        XCTAssertEqual(result, 5)
    }
    
    func testHayCuatroSabadosEnFebrero2024() throws {
        let diaSem = 7
        let año = 2024
        let mes = 2
        let result = try sut.cantidadDeDiasDe(diaSemana: diaSem, enMes: mes, yAño: año)
        XCTAssertEqual(result, 4)
    }
    
    func testHayCuatroSabadosEnJunio2015() throws{
        let diaSem = 7
        let año = 2015
        let mes = 6
        let result = try sut.cantidadDeDiasDe(diaSemana: diaSem, enMes: mes, yAño: año)
        XCTAssertEqual(result, 4)
    }
    
    func testHayCincoJuevesEnDiciembre2022()throws {
        let diaSem = 5
        let año = 2022
        let mes = 12
        let result = try sut.cantidadDeDiasDe(diaSemana: diaSem, enMes: mes, yAño: año)
        XCTAssertEqual(result, 5)
    }
    
    func testHayCuatroDomingosEnMayo2023() throws {
        let diaSem = 1
        let año = 2023
        let mes = 5
        let result = try sut.cantidadDeDiasDe(diaSemana: diaSem, enMes: mes, yAño: año)
        XCTAssertEqual(result, 4)
    }
    
    func testHayCuatroLunesEnEnero2030() throws {
        let diaSem = 2
        let año = 2030
        let mes = 1
        let result = try sut.cantidadDeDiasDe(diaSemana: diaSem, enMes: mes, yAño: año)
        XCTAssertEqual(result, 4)
    }
    
    func testDebeLanzarErrorBadDiaSemanaNegativo() throws {
        let diaSem = -1
        let año = 2030
        let mes = 1
        
        XCTAssertThrowsErrorEqual(try sut.cantidadDeDiasDe(diaSemana: diaSem, enMes: mes, yAño: año), ErrorDateUtilities.badDiaSemana)
    }
    
    func testDebeLanzarErrorBadDiaSemana9() throws {
        let diaSem = 9
        let año = 2030
        let mes = 1
        
        XCTAssertThrowsErrorEqual(try sut.cantidadDeDiasDe(diaSemana: diaSem, enMes: mes, yAño: año), ErrorDateUtilities.badDiaSemana)
    }
    
    func testDebeLanzarErrorBadMesCero() throws {
        let diaSem = 5
        let año = 2030
        let mes = 0
        
        XCTAssertThrowsErrorEqual(try sut.cantidadDeDiasDe(diaSemana: diaSem, enMes: mes, yAño: año), ErrorDateUtilities.badMes)
    }
    
    func testDebeLanzarErrorBadMes14() throws {
        let diaSem = 5
        let año = 2030
        let mes = 14
        
        XCTAssertThrowsErrorEqual(try sut.cantidadDeDiasDe(diaSemana: diaSem, enMes: mes, yAño: año), ErrorDateUtilities.badMes)
    }
    
    func testDebeLanzarErrorBadAño1910() throws {
        let diaSem = 5
        let año = 1910
        let mes = 7
        
        XCTAssertThrowsErrorEqual(try sut.cantidadDeDiasDe(diaSemana: diaSem, enMes: mes, yAño: año), ErrorDateUtilities.badAño)
    }
    func testDebeLanzarErrorBadAño2200() throws {
        let diaSem = 5
        let año = 2200
        let mes = 7
        
        XCTAssertThrowsErrorEqual(try sut.cantidadDeDiasDe(diaSemana: diaSem, enMes: mes, yAño: año), ErrorDateUtilities.badAño)
    }
    
    //MARK: Dias de la semana periodo
    
    func testHayCincoMiercolesEntreEl2Julio2024y5Septiembre2024() throws {
        let diaSem = 3
        let fechaInicial = Date.from(year: 2024, month: 7, day: 2, hour: 20, minute: 0)
        let fechaFinal = Date.from(year: 2024, month: 9, day: 5, hour: 20, minute: 0)
        let result = try sut.cantidadDeDiasDe(diaSemana: diaSem, entre: fechaInicial, fechafinal: fechaFinal)
        XCTAssertEqual(result, 10)
    }
    
    func testHayCuatroSabadosEntre1Febrero2023y28Febrero2024() throws {
        let diaSem = 7
        let fechaInicial = Date.from(year: 2023, month: 2, day: 1, hour: 20, minute: 0)
        let fechaFinal = Date.from(year: 2024, month: 2, day: 28, hour: 20, minute: 0)
        let result = try sut.cantidadDeDiasDe(diaSemana: diaSem, entre: fechaInicial, fechafinal: fechaFinal)
        XCTAssertEqual(result, 56)
    }
        
        func testHayCuatroSabadosEntre1Junio2015y1Junio2020() throws {
            let diaSem = 7
            let fechaInicial = Date.from(year: 2015, month: 6, day: 1, hour: 20, minute: 0)
            let fechaFinal = Date.from(year: 2020, month: 6, day: 1, hour: 20, minute: 0)
            let result = try sut.cantidadDeDiasDe(diaSemana: diaSem, entre: fechaInicial, fechafinal: fechaFinal)
            XCTAssertEqual(result, 261)
        }
        
        func testHayCincoJuevesDel1Al31DeDiciembre2022() throws {
            let diaSem = 5
            let fechaInicial = Date.from(year: 2022, month: 12, day: 1, hour: 20, minute: 0)
            let fechaFinal = Date.from(year: 2022, month: 12, day: 31, hour: 20, minute: 0)
            let result = try sut.cantidadDeDiasDe(diaSemana: diaSem, entre: fechaInicial, fechafinal: fechaFinal)
            XCTAssertEqual(result, 5)
        }
        
        func testHayCuatroDomingosEntre15Mayoy29Julio2023() throws {
            let diaSem = 1
            let fechaInicial = Date.from(year: 2023, month: 5, day: 15, hour: 20, minute: 0)
            let fechaFinal = Date.from(year: 2023, month: 7, day: 29, hour: 20, minute: 0)
            let result = try sut.cantidadDeDiasDe(diaSemana: diaSem, entre: fechaInicial, fechafinal: fechaFinal)
            XCTAssertEqual(result, 10)
        }
        
    func testPeriodoDebeLanzarErrorBadDiaSemanaNegativo() throws {
        let diaSem = -1
        let fechaInicial = Date.from(year: 2023, month: 5, day: 15, hour: 20, minute: 0)
        let fechaFinal = Date.from(year: 2023, month: 7, day: 29, hour: 20, minute: 0)
        
        XCTAssertThrowsErrorEqual(try sut.cantidadDeDiasDe(diaSemana: diaSem, entre: fechaInicial, fechafinal: fechaFinal), ErrorDateUtilities.badDiaSemana)
    }
    
    func testPeriodoDebeLanzarErrorBadDiaSemana9() throws {
        let diaSem = 9
        let fechaInicial = Date.from(year: 2023, month: 5, day: 15, hour: 20, minute: 0)
        let fechaFinal = Date.from(year: 2023, month: 7, day: 29, hour: 20, minute: 0)
        
        XCTAssertThrowsErrorEqual(try sut.cantidadDeDiasDe(diaSemana: diaSem, entre: fechaInicial, fechafinal: fechaFinal), ErrorDateUtilities.badDiaSemana)
    }
    
        func testDebeLanzarErrorBadPeriod() throws {
            let diaSem = 1
            let fechaInicial = Date.from(year: 2030, month: 5, day: 15, hour: 20, minute: 0)
            let fechaFinal = Date.from(year: 2023, month: 7, day: 29, hour: 20, minute: 0)
            
            XCTAssertThrowsErrorEqual(try sut.cantidadDeDiasDe(diaSemana: diaSem, entre: fechaInicial, fechafinal: fechaFinal), ErrorDateUtilities.badPeriod)
        }
        
        func testDebeLanzarErrorBadPeriod2() throws {
            let diaSem = 1
            let fechaInicial = Date.from(year: 2024, month: 1, day: 1, hour: 20, minute: 0)
            let fechaFinal = Date.from(year: 2024, month: 1, day: 1, hour: 20, minute: 0)
            
            XCTAssertThrowsErrorEqual(try sut.cantidadDeDiasDe(diaSemana: diaSem, entre: fechaInicial, fechafinal: fechaFinal), ErrorDateUtilities.badPeriod)
        }
        
        func testDebeLanzarErrorBadAñoInicio() throws {
            let diaSem = 1
            let fechaInicial = Date.from(year: 1969, month: 1, day: 1, hour: 20, minute: 0)
            let fechaFinal = Date.from(year: 2024, month: 1, day: 1, hour: 20, minute: 0)
            
            XCTAssertThrowsErrorEqual(try sut.cantidadDeDiasDe(diaSemana: diaSem, entre: fechaInicial, fechafinal: fechaFinal), ErrorDateUtilities.badAño)
        }
        
        func testDebeLanzarErrorBadAñoFin() throws {
            let diaSem = 1
            let fechaInicial = Date.from(year: 2024, month: 1, day: 1, hour: 20, minute: 0)
            let fechaFinal = Date.from(year: 2101, month: 1, day: 1, hour: 20, minute: 0)
            
            XCTAssertThrowsErrorEqual(try sut.cantidadDeDiasDe(diaSemana: diaSem, entre: fechaInicial, fechafinal: fechaFinal), ErrorDateUtilities.badAño)
        }
}
