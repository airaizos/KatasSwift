//
//  NIFValidatorTests.swift
//  
//
//  Created by Adrian Iraizos Mendoza on 23/7/24.
//

import XCTest

@testable import KatasSwift
final class ValidadorIDTests: XCTestCase {
   //MARK: ValidadorID

    func testIsValidNIF() throws {
        for nif in TestIDs.validNIFs {
            XCTAssertTrue(try ValidadorID.isValidNIF(nif),"Es un NIF válido: \(nif)")
        }
    }
    
    func testIsValidNIE() throws {
        for nie in TestIDs.validNIEs {
            XCTAssertTrue(try ValidadorID.isValidNIE(nie),"Es un NIE válido: \(nie)")
        }
    }
    
    func testIsValidID() throws {
        let ids = [TestIDs.validNIEs,TestIDs.validNIFs].flatMap({ $0 })
        
        for id in ids {
            XCTAssertTrue(try ValidadorID.isValidID(id), "Es un ID válido \(id)")
        }
    }
    
    func testIsValidNIFThrowsIncorrectLenghtError() throws {
        for nif in TestIDs.incorrectLengthNIF {
            XCTAssertThrowsErrorEqual(try ValidadorID.isValidNIF(nif), NIFError.LongitudIncorrecta)
        }
    }
    
    func testIsValidNIFThrowsIncorrectNum() throws {
        for nif in TestIDs.incorrectNumberNIF {
            XCTAssertThrowsErrorEqual(try ValidadorID.isValidNIF(nif), NIFError.NumeroIncorrecto)
        }
    }
    
    func testIsValidNIEThrowsIncorrectLenght() throws {
        for nie in TestIDs.incorrectLengthNIE {
            XCTAssertThrowsErrorEqual(try ValidadorID.isValidNIE(nie), NIFError.LongitudIncorrecta)
        }
    }
    
    func testIsValidNIEThrowsIncorrectFormat() throws {
        for nie in TestIDs.incorrectFormatNIE {
            XCTAssertThrowsErrorEqual(try ValidadorID.isValidNIE(nie), NIFError.FormatoIncorrecto,nie)
        }
    }
    
    func testIsValidNIEThrowsIncorrectNum() throws {
        for nie in TestIDs.incorrectNumNIE {
            XCTAssertThrowsErrorEqual(try ValidadorID.isValidNIE(nie), NIFError.NumeroIncorrecto )
        }
    }
}

final class GeneradorAleatorioIDTests: XCTestCase {
   //MARK: GeneradorAleatorioID

    func testGenerarNIFValido() throws {
        for _ in 0...100 {
            let validNIF = try GeneradorAleatorioID.generaNIFValido()
            XCTAssertTrue(try ValidadorID.isValidID(validNIF),validNIF)
        }
    }
    
    func testGenerarNIFNoValido() throws {
        for _ in 0...100 {
            let invalidNIF = try GeneradorAleatorioID.generaNIFNoValido()
            XCTAssertFalse(try ValidadorID.isValidID(invalidNIF),invalidNIF)
        }
    }
    
    func testGenerarNIEValido() throws {
        for _ in 0...100 {
            let validNIE = try GeneradorAleatorioID.generaNIEValido()
            XCTAssertTrue(try ValidadorID.isValidNIE(validNIE),validNIE)
        }
    }
    
    func testGenerarNIENoValido() throws {
        for _ in 0...100 {
            let invalidNIE = try GeneradorAleatorioID.generaNIENoValido()
            
            XCTAssertFalse(try ValidadorID.isValidNIE(invalidNIE), invalidNIE)
        }
    }
}

struct TestIDs {
   static let validNIFs = ["52728978Y","64408062N","01532541M","94485308C","81197509B","16014540P","24374422B","80473694Y","57656615P","33026627F","05046999V","68197834M","05622026K","63612089T","49333471N","72335800H","67272906E","86030273S","87838438N","10327466Y","00000051M","00000000T"]
    
    static let validNIEs = ["Y7047008Y","Y5738411V","Y0056488Z","Z8536200P","X1877530V","Y2895348F","X2664140G","Z1508108A","X9936512Y","Y0814337J","X8943653B","Z5616741P","X0939355N","X9811910H","X0000001R","Y0000000Z","Z0000000M","Z0000001Y"]
    
    static let incorrectLengthNIF = ["","00K","0153200041M"]
    static let incorrectNumberNIF = ["00000-00L","16515S55M","FASDFGHGG"]
    
    static let incorrectLengthNIE = ["","Y70470088Y","Z0153200041M","X1531M"]
    static let incorrectFormatNIE = ["97047008Y","09936512y","0993G512Y","A5738411V","B0738411V"]
    static let incorrectNumNIE = ["Y70470P8Y","Z8536O00P","ZAAAAAAAP","XX056488Z"]
    
}
