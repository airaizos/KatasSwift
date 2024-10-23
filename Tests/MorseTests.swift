//
//  MorseTests.swift
//  
//
//  Created by Adrian Iraizos Mendoza on 20/10/24.
//

import XCTest

@testable import KatasSwift
final class MorseTests: XCTestCase {

    func testMorseSOS() {
     let result = Morse.emitir(mensaje: "SOS")
        
        XCTAssertEqual(result, "... --- ...")
    }

    func testMorseHelloSwifter() {
     let result = Morse.emitir(mensaje: "Hello Swifter")
        
        XCTAssertEqual(result, ".... . .-.. .-.. --- / ... .-- .. ..-. - . .-.")
    }
    
    func testMorseDontWorryBeHappy() {
     let result = Morse.emitir(mensaje: "Don't worry Be happy")
        
        XCTAssertEqual(result, "-.. --- -. - / .-- --- .-. .-. -.-- / -... . / .... .- .--. .--. -.--")
    }
    
    func testMorseOrden66() {
     let result = Morse.emitir(mensaje: "Orden 66")
        
        XCTAssertEqual(result, "--- .-. -.. . -. / -.... -....")
    }
    
    func testMorseEspacios() {
     let result = Morse.emitir(mensaje: "     ")
        
        XCTAssertEqual(result, "/ / / / /")
    }
}
