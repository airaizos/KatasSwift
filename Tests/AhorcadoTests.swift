//
//  AhorcadoTests.swift
//  
//
//  Created by Adrian Iraizos Mendoza on 6/10/24.
//

import XCTest

@testable import KatasSwift
final class AhorcadoTests: XCTestCase {

    var sut: Ahorcado!

    override func setUp() {
        sut = Ahorcado(listadoPalabras: ["Swift"])
    }
    
    override func tearDown() {
        sut = nil
    }
    
    func testShouldBeHaSidoAhorcado() {
        let _ = sut.intentoCon(letra: "A")
        let _ = sut.intentoCon(letra: "B")
        let final = sut.intentoCon(letra: "C")
        XCTAssertEqual(final, "Oh no! has sido ahorcado")
    }
    
    func testShouldIntentosCorrectos() {
        let firstAttempt = sut.intentoCon(letra: "S")
        XCTAssertEqual(firstAttempt, "Letras adivinadas: S _ _ _ _. Prueba con otra letra. Llevas 0 fallos.")
        
        let secondAttempt = sut.intentoCon(letra: "w")
        XCTAssertEqual(secondAttempt, "Letras adivinadas: S W _ _ _. Prueba con otra letra. Llevas 0 fallos.")
        
        let thirdAttempt = sut.intentoCon(letra: "i")
        XCTAssertEqual(thirdAttempt, "Letras adivinadas: S W I _ _. Prueba con otra letra. Llevas 0 fallos.")
        
        let fourthAttempt = sut.intentoCon(letra: "f")
        XCTAssertEqual(fourthAttempt, "Letras adivinadas: S W I F _. Prueba con otra letra. Llevas 0 fallos.")
    }
    func testShouldIntentosIncorrectos() {
        let firstAttempt = sut.intentoCon(letra: "X")
        XCTAssertEqual(firstAttempt, "Letras adivinadas: _ _ _ _ _. Prueba con otra letra. Llevas 1 fallos.")
        
        let secondAttempt = sut.intentoCon(letra: "A")
        XCTAssertEqual(secondAttempt, "Letras adivinadas: _ _ _ _ _. Prueba con otra letra. Llevas 2 fallos.")
        
        let thirdAttempt = sut.intentoCon(letra: "P")
        XCTAssertEqual(thirdAttempt, "Oh no! has sido ahorcado")
    }
    
    func testShouldIntentosIncorrectos2Correctos2() {
        let firstAttempt = sut.intentoCon(letra: "X")
        XCTAssertEqual(firstAttempt, "Letras adivinadas: _ _ _ _ _. Prueba con otra letra. Llevas 1 fallos.")
        
        let secondAttempt = sut.intentoCon(letra: "A")
        XCTAssertEqual(secondAttempt, "Letras adivinadas: _ _ _ _ _. Prueba con otra letra. Llevas 2 fallos.")
        
        let thirdAttempt = sut.intentoCon(letra: "I")
        XCTAssertEqual(thirdAttempt, "Letras adivinadas: _ _ I _ _. Prueba con otra letra. Llevas 2 fallos.")
        
        let fourthAttempt = sut.intentoCon(letra: "T")
        XCTAssertEqual(fourthAttempt, "Letras adivinadas: _ _ I _ T. Prueba con otra letra. Llevas 2 fallos.")
    }
    
    func testPalabraAcertada() {
        let _ = sut.intentoCon(letra: "S")
        let _ = sut.intentoCon(letra: "W")
        let _ = sut.intentoCon(letra: "I")
        let _ = sut.intentoCon(letra: "F")
        let last = sut.intentoCon(letra: "T")
        XCTAssertEqual(last, "Felicidades has ganado: La palabra era S W I F T y solo con 0 fallo(s)")
    }
}
