//
//  DancingContestTests.swift
//  
//
//  Created by Adrian Iraizos Mendoza on 7/7/24.
//

import XCTest

@testable import KatasSwift
final class DancingContestTests: XCTestCase {

    var sut: DancingContest!
    let inicio  = Date.from(year: 2024, month: 7, day: 5, hour: 10, minute: 0)
    
    override func setUp() {
        sut = DancingContest()
    }
    
    override func tearDown() {
        sut = nil
    }
    
    func testConcurso50Parejas() {
        let concurso = Concurso(fechaInicio: inicio, totalParejas: 50, parejasEliminadasPorTanda: 30, duracionTanda: 7, periodoBaile: 300, duracionDescanso: 7, duracionPorDia: 140)
        
        let fechaFin = sut.calculaFechaFin(concurso: concurso)
        let result = Date.from(year: 2024, month: 7, day: 5, hour: 11, minute: 03)
        XCTAssertEqual(fechaFin.minutesDifference(to: result), 0)
            XCTAssertEqual(fechaFin.compare(with: result), "Igual")
    }
    
    func testConcurso340Parejas() {
        let concurso = Concurso(fechaInicio: inicio, totalParejas: 340, parejasEliminadasPorTanda: 90, duracionTanda: 4, periodoBaile: 180, duracionDescanso: 30, duracionPorDia: 400)
        
        let fechaFin = sut.calculaFechaFin(concurso: concurso)
        let result = Date.from(year: 2024, month: 7, day: 5, hour: 10, minute: 44)
        XCTAssertEqual(fechaFin.minutesDifference(to: result), 0)
        XCTAssertEqual(fechaFin.compare(with: result), "Igual")
    }
    
    func testConcurso999Parejas() {
        let concurso = Concurso(fechaInicio: inicio, totalParejas: 999, parejasEliminadasPorTanda: 60, duracionTanda: 4, periodoBaile: 120, duracionDescanso: 5, duracionPorDia: 600)
        let fechaFin = sut.calculaFechaFin(concurso: concurso)
        let result = Date.from(year: 2024, month: 7, day: 5, hour: 11, minute: 36)
        
        XCTAssertEqual(fechaFin.minutesDifference(to: result), 0)
        XCTAssertEqual(fechaFin.compare(with: result), "Igual")
    }
    
    func testConcurso51Parejas() {
        //Given
        let concurso  = Concurso(fechaInicio: inicio, totalParejas: 51, parejasEliminadasPorTanda: 50, duracionTanda: 7, periodoBaile: 140, duracionDescanso: 3, duracionPorDia: 280)
       
        //When
        let fechaFin = sut.calculaFechaFin(concurso: concurso)
        
        //Then
        let result = Date.from(year: 2024, month: 7, day: 5, hour: 10, minute: 56)
        XCTAssertEqual(fechaFin.minutesDifference(to: result), 0)
        XCTAssertEqual(fechaFin.compare(with: result), "Igual")
    }
    
    func testConcurso299Parejas() {
        //Given
        let concurso  = Concurso(fechaInicio: inicio, totalParejas: 299, parejasEliminadasPorTanda: 30, duracionTanda: 8, periodoBaile: 40, duracionDescanso: 10, duracionPorDia: 120)
       
        //When
        let fechaFin = sut.calculaFechaFin(concurso: concurso)
        
        //Then
        let result = Date.from(year: 2024, month: 7, day: 5, hour: 12, minute: 36)
        XCTAssertEqual(fechaFin.minutesDifference(to: result), 0)
        XCTAssertEqual(fechaFin.compare(with: result), "Igual")
    }
    
    func testConcurso1000Parejas() {
        //Given
        let concurso  = Concurso(fechaInicio: inicio, totalParejas: 1000, parejasEliminadasPorTanda: 30, duracionTanda: 20, periodoBaile: 40, duracionDescanso: 15, duracionPorDia: 120)
       
        //When
        let fechaFin = sut.calculaFechaFin(concurso: concurso)
        
        //Then
        let result = Date.from(year: 2024, month: 7, day: 11, hour: 14, minute: 40)
        XCTAssertEqual(fechaFin.minutesDifference(to: result), 0)
        XCTAssertEqual(fechaFin.compare(with: result), "Igual")
    }
}
