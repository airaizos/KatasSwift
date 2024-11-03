//
//  RankeableTests.swift
//  
//
//  Created by Adrian Iraizos Mendoza on 3/11/24.
//

import XCTest

@testable import KatasSwift
final class RankeableTests: XCTestCase {

    func testEquiposRankShouldBe1() {
        let verde = equipos[2]
        let rank = equipos.rank(verde)
        XCTAssertEqual(rank, 1)
    }
    
    func testEquiposRankShouldBe4() {
        let azul = equipos[1]
        let rank = equipos.rank(azul)
        XCTAssertEqual(rank, 4)
    }
    
    func testSerieRankShouldBe1() {
        let serie1 = series[0]
        let serie2 = series[1]
        
        let firstSerie1 = series.rank(serie1)
        let firstSerie2 = series.rank(serie2)
        XCTAssertEqual(firstSerie1, firstSerie2)
        XCTAssertEqual(firstSerie1, 1)
        XCTAssertEqual(firstSerie2, 1)
    }
    
    func testSerieRankShouldBe3() {
        let serie3 = series[2]
        
        let rank = series.rank(serie3)
        XCTAssertEqual(rank, 3)
    }
    
    func testSerieRankShouldBeNil() {
        let serie4 = SerieTest("The Fresh Prince of Bel-Air", rating: 7.9)
        
        let rank = series.rank(serie4)
        XCTAssertNil(rank)
    }
}

fileprivate struct EquipoTest: Rankeable {
    var id: UUID
    var nombre: String
    var puntos: Int
    var points: Double {
        Double(puntos)
    }
    
    init(_ nombre: String, puntos: Int) {
        self.id = UUID()
        self.nombre = nombre
        self.puntos = puntos
    }
}
fileprivate struct SerieTest: Rankeable {
    var id: UUID
    var nombre: String
    var rating: Double
    var points: Double {
        rating
    }
    
    init(_ nombre: String, rating: Double) {
        self.id = UUID()
        self.nombre = nombre
        self.rating = rating
    }
}

fileprivate let equipos = [
    EquipoTest("Amarillo", puntos: 5),
    EquipoTest("Azul", puntos: 1),
    EquipoTest("Verde", puntos: 7),
    EquipoTest("Naranja", puntos: 4)
]

fileprivate let series = [
    SerieTest("That's 70 show", rating: 6.9),
    SerieTest("Dr. House", rating: 6.9),
    SerieTest("Doogie Howser, M.D", rating: 4.9)
]
