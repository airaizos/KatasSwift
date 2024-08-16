//
//  PasswordValidatorTests.swift
//  
//
//  Created by Adrian Iraizos Mendoza on 16/8/24.
//

import XCTest

@testable import KatasSwift
final class PasswordValidatorTests: XCTestCase {

    var sut: PasswordValidator!
    
    override func setUp() {
         sut = PasswordValidator()
    }
    
    override func tearDown() {
        sut = nil
    }
    
    func testIsValidLength() throws {
        let tooShort = "ABcDeF"
        XCTAssertTrue(try sut.isValidLength(tooShort, length: 6))
    }
    
    func testThrowsErrorTooShort() throws {
        let tooShort = "ABc"
        XCTAssertThrowsErrorEqual(try sut.isValidLength(tooShort, length: 6), PasswordError.tooShort)
    }
    func testThrowsErrorTooLong() throws {
        let tooLong = "ABcDeFgHiJkL"
        XCTAssertThrowsErrorEqual(try sut.isValidLength(tooLong, length: 6), PasswordError.tooLong)
    }
    
    //MARK: Couplet
    func testIsACouplet() throws {
        let couplet = "AbCdEf"
        XCTAssertTrue(try sut.isACouplet(couplet))
    }
    func testCoupletThrowsErrorNoLowercased() throws {
        let couplet = "ABCDEF"
        XCTAssertThrowsErrorEqual(try sut.isACouplet(couplet), PasswordError.noLowercased)
    }
    func testCoupletThrowsErrorNoUppercased() throws {
        let couplet = "abcdef"
        XCTAssertThrowsErrorEqual(try sut.isACouplet(couplet), PasswordError.noUppercased)
    }
    func testCoupletThrowsErrorWhiteSpaces() throws {
        let couplet = "ABC DEF"
        XCTAssertThrowsErrorEqual(try sut.isACouplet(couplet), PasswordError.whiteSpaces)
    }
    func testCoupletThrowsErrorConsecutiveCharacters() throws {
        let couplet = "ABCcddd"
        XCTAssertThrowsErrorEqual(try sut.isACouplet(couplet), PasswordError.consecutiveCharacters)
    }
    
    //MARK: Triplet
    
    func testIsATriplet() throws {
        let triplet = "AbCd3F"
        XCTAssertTrue(try sut.isATriplet(triplet))
    }
    func testTripletThrowsErrorNoUppercased() throws {
        let triplet = "abcdefg"
        XCTAssertThrowsErrorEqual(try sut.isATriplet(triplet), PasswordError.noUppercased)
    }
    func testTripletThrowsErrorNoLowecased() throws {
        let triplet = "ABCDEF"
        XCTAssertThrowsErrorEqual(try sut.isATriplet(triplet), PasswordError.noLowercased)
    }
    func testTripletThrowsErrorNoNumbers() throws {
        let triplet = "AbCdeF"
        XCTAssertThrowsErrorEqual(try sut.isATriplet(triplet), PasswordError.noNumbers)
    }
    func testTripletThrowsErrorWhiteSpaces() throws {
        let couplet = "ABC DEF"
        XCTAssertThrowsErrorEqual(try sut.isATriplet(couplet), PasswordError.whiteSpaces)
    }
    func testTripletThrowsErrorConsecutiveCharacters() throws {
        let couplet = "ABCcddd"
        XCTAssertThrowsErrorEqual(try sut.isATriplet(couplet), PasswordError.consecutiveCharacters)
    }
    
    //MARK: Quadruplet
    func testIsAQuatruplet() throws {
        let quadruplet = "Ab3%Ef9)"
        XCTAssertTrue(try sut.isAQuadruplet(quadruplet))
    }
    func testQuadrupletThrowsErrorNoUppercased() throws {
        let quadruplet = "abcdefg"
        XCTAssertThrowsErrorEqual(try sut.isAQuadruplet(quadruplet), PasswordError.noUppercased)
    }
    func testQuadrupletThrowsErrorNoLowecased() throws {
        let quadruplet = "ABCDEF"
        XCTAssertThrowsErrorEqual(try sut.isAQuadruplet(quadruplet), PasswordError.noLowercased)
    }
    func testQuadrupletThrowsErrorNoNumbers() throws {
        let quadruplet = "AbCdeF"
        XCTAssertThrowsErrorEqual(try sut.isAQuadruplet(quadruplet), PasswordError.noNumbers)
    }
    func testQuadrupletThrowsErrorNoSymbols() throws {
        let quadruplet = "AbCdeF6"
        XCTAssertThrowsErrorEqual(try sut.isAQuadruplet(quadruplet), PasswordError.noSymbols)
    }
    func testQuadrupletThrowsErrorWhiteSpaces() throws {
        let couplet = "ABC DEF"
        XCTAssertThrowsErrorEqual(try sut.isAQuadruplet(couplet), PasswordError.whiteSpaces)
    }
    func testQuadrupletThrowsErrorConsecutiveCharacters() throws {
        let couplet = "ABBCc8%d"
        XCTAssertThrowsErrorEqual(try sut.isAQuadruplet(couplet), PasswordError.consecutiveCharacters)
    }
}
