//
//  ArrayExtensionTests.swift
//  
//
//  Created by Adrian Iraizos Mendoza on 27/8/24.
//

import XCTest

@testable import KatasSwift
final class ArrayExtensionTests: XCTestCase {

    
    func testIndicesEnOrdenCoincidenteDeArrayDeStrings() {
        let letras = ["A","B","C","D","E","F","G","H","I"]
        
        let vocales = ["A","E","I","O","U"]
        
        let result = letras.indicesEnOrdenCoincidente(con: vocales)
        XCTAssertEqual(result, [0,4,8])
    }
    
    func testIndicesEnOrdenCoincidenteDeArrayDeInt() {
        let numeros = [1,2,3,4,5,6,7,8,9]
        let seleccion = [9,8,7]
        
        let result = numeros.indicesEnOrdenCoincidente(con: seleccion)
        XCTAssertEqual(result, [8])
    }
    
    func testIndicesEnOrdenCoincidenteDeArrayDeDoubles() {
        let doubles = [11.0,12.0,13.0,14.0,15.0,16.0]
        let seleccion = [12.0,15.0,16.0]
        
        let result = doubles.indicesEnOrdenCoincidente(con: seleccion)
        XCTAssertEqual(result, [1,4,5])
    }
    
    func testIndicesEnOrdenCoincidenteDeArrayDeCharacters() {
        let letras:[Character] = ["A","B","C","D","E","F","G","H","I"]
        let vocales:[Character] = ["A","E","I","O","U"]
        
        let result = letras.indicesEnOrdenCoincidente(con: vocales)
        XCTAssertEqual(result, [0,4,8])
    }
    
    func testIndicesEnOrdenCoincidenteDeArrayStringAE() {
        let vocales = ["A","E"]
        let letras = ["A","B","C","D","E","F","G"]
        
        let result = vocales.indicesEnOrdenCoincidente(con: letras)
        XCTAssertEqual(result, [0])
    }
    
    func testIndicesEnOrdenCoincidenteDeArrayStringVacios() {
        let array = [String]()
        let probar = [String]()
        
        let result = array.indicesEnOrdenCoincidente(con: probar)
        XCTAssertEqual(result, [])
    }
    
    func testIndicesEnOrdenCoincidenteDeArrayStringVacioAB() {
        let array = [String]()
        let probar = ["A","B"]
        
        let result = array.indicesEnOrdenCoincidente(con: probar)
        XCTAssertEqual(result, [])
    }
    
    func testIndicesEnOrdenCoincidenteDeArrayDeArraysDeString() {
        let monedas = [["E","U","R"],["Y","E","N"],["U","S","D"], ["H","R","K"]]
        let monedero = [["E","U","R"],["U","S","D"]]
        let result = monedas.indicesEnOrdenCoincidente(con: monedero)
        XCTAssertEqual(result, [0,2])
    }
    
    // MARK: Split by
    func testSeparaArrayEnterosSiNumMenorQue5() {
        let numeros = [1,2,3,4,5,6,7,8,9]
        
       let result = numeros.separa { num in
            num < 5
        }
        
        XCTAssertEqual(result.0, [1,2,3,4])
        XCTAssertEqual(result.1, [5,6,7,8,9])
    }
    
    func testSeparaArrayStringsSiComienzanPorM() {
        let letras = ["A","O","L","D","E","Z","G","X","I"]
        
        let result = letras.separa { letra in
            letra < "M"
        }
        
        XCTAssertEqual(result.0, ["A", "L", "D", "E", "G", "I"])
        XCTAssertEqual(result.1, ["O", "Z", "X"])
    }
    
    func testSeparaArrayDoublesVacio() {
        let letras = [Double]()
        
        let result = letras.separa { letra in
            letra < 100.00
        }
        
        XCTAssertEqual(result.0, [])
        XCTAssertEqual(result.1, [])
    }
}
