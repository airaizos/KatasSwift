//
//  CountersignTests.swift
//  
//
//  Created by Adrian Iraizos Mendoza on 11/8/24.
//

import XCTest

@testable import KatasSwift
final class CountersignTests: XCTestCase {
    
    var sut: Countersign!
    var validator: PasswordValidator!
    
    override func setUp() {
        sut = Countersign()
        validator = PasswordValidator()
    }
    
    override func tearDown() {
        sut = nil
        validator = nil
    }

    func testIsValidLenght8() throws {
        let lenght = 8
        let pass = try sut.generaPassword(tipo: .couplet, longitud: lenght)
        
        let isValid = try validator.isValidLength(pass, length: lenght)
        XCTAssertTrue(isValid)
    }
    
    func testIsValidLenght14() throws {
        let lenght = 14
        let pass = try sut.generaPassword(tipo: .couplet, longitud: lenght)
        
        let isValid = try validator.isValidLength(pass, length: lenght)
        XCTAssertTrue(isValid)
    }
    
    func testIsValidLenght32() throws {
        let lenght = 32
        let pass = try sut.generaPassword(tipo: .couplet, longitud: lenght)
        
        let isValid = try validator.isValidLength(pass, length: lenght)
        XCTAssertTrue(isValid)
    }
    
    func testIsACouplet() throws {
        let pass = try sut.generaPassword(tipo: .couplet, longitud: 8)
        let isValid = try validator.isACouplet(pass)
        XCTAssertTrue(isValid)
    }
    
    func testIsATriplet() throws {
        let pass = try sut.generaPassword(tipo: .triplet, longitud: 8)
        let isValid = try validator.isATriplet(pass)
        
        XCTAssertTrue(isValid)
    }
    
    func testIsAQuadruplet() throws {
        let pass = try sut.generaPassword(tipo: .quadruplet, longitud: 8)
        
        let isValid = try validator.isAQuadruplet(pass)
        
        XCTAssertTrue(isValid)
    }
}
