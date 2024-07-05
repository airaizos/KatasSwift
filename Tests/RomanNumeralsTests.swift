//
//  RomanNumeralsTests.swift
//  
//
//  Created by Adrian Iraizos Mendoza on 4/7/24.
//

import XCTest

@testable import KatasSwift
final class RomanNumeralsTests: XCTestCase {
    
    var sut: RomanNumerals!
    
    override func setUp() async throws {
        sut = RomanNumerals()
    }
    
    //MARK: - Convierte Romano a Decimal -
    func testDebeLanzarErrorCadenaVaciaEnInput() throws {
        XCTAssertThrowsErrorEqual(try sut.convierteDeRomanoADecimal(""), ErrorRomanos.cadenaVacia)
    }
    
    func testDebeLanzarErrorNoRomanoEnInput() throws {
        XCTAssertThrowsErrorEqual(try sut.convierteDeRomanoADecimal("NOROMANO"), ErrorRomanos.noRomano)

        XCTAssertThrowsErrorEqual(try sut.convierteDeRomanoADecimal("-MMMM"), ErrorRomanos.noRomano)
    }
    
    func testDebeLanzarErrorMasDeTresSimbolosIgualesEnInput() throws {
        XCTAssertThrowsErrorEqual(try sut.convierteDeRomanoADecimal("IIII"), ErrorRomanos.masDeTres)
        XCTAssertThrowsErrorEqual(try sut.convierteDeRomanoADecimal("XXXX"), ErrorRomanos.masDeTres)

        XCTAssertThrowsErrorEqual(try sut.convierteDeRomanoADecimal("CCCC"), ErrorRomanos.masDeTres)
 
        XCTAssertThrowsErrorEqual(try sut.convierteDeRomanoADecimal("MMMM"), ErrorRomanos.masDeTres)
    }
    
    
    func testDebeLanzarErrorIncoherenciaInput() throws {
        XCTAssertThrowsErrorEqual(try sut.convierteDeRomanoADecimal("IM"), ErrorRomanos.incoherencia)
        XCTAssertThrowsErrorEqual(try sut.convierteDeRomanoADecimal("ID"), ErrorRomanos.incoherencia)
        XCTAssertThrowsErrorEqual(try sut.convierteDeRomanoADecimal("IC"), ErrorRomanos.incoherencia)
        XCTAssertThrowsErrorEqual(try sut.convierteDeRomanoADecimal("IL"), ErrorRomanos.incoherencia)
        XCTAssertThrowsErrorEqual(try sut.convierteDeRomanoADecimal("XM"), ErrorRomanos.incoherencia)
        XCTAssertThrowsErrorEqual(try sut.convierteDeRomanoADecimal("XD"), ErrorRomanos.incoherencia)
        XCTAssertThrowsErrorEqual(try sut.convierteDeRomanoADecimal("VX"), ErrorRomanos.incoherencia)
        XCTAssertThrowsErrorEqual(try sut.convierteDeRomanoADecimal("VV"), ErrorRomanos.incoherencia)
        XCTAssertThrowsErrorEqual(try sut.convierteDeRomanoADecimal("LL"), ErrorRomanos.incoherencia)
        XCTAssertThrowsErrorEqual(try sut.convierteDeRomanoADecimal("DD"), ErrorRomanos.incoherencia)
        XCTAssertThrowsErrorEqual(try sut.convierteDeRomanoADecimal("VV"), ErrorRomanos.incoherencia)
        XCTAssertThrowsErrorEqual(try sut.convierteDeRomanoADecimal("LL"), ErrorRomanos.incoherencia)
        XCTAssertThrowsErrorEqual(try sut.convierteDeRomanoADecimal("DD"), ErrorRomanos.incoherencia)
    }
    
    func testNumerosRomanosADecimal() throws {
        XCTAssertEqual(try sut.convierteDeRomanoADecimal("IV"),4,"Debe ser 4")
        XCTAssertEqual(try sut.convierteDeRomanoADecimal("IX"),9,"Debe ser 9")
        XCTAssertEqual(try sut.convierteDeRomanoADecimal("XXXIX"),39,"Debe ser 39")
        XCTAssertEqual(try sut.convierteDeRomanoADecimal("XLV"),45,"Debe ser 45")
        XCTAssertEqual(try sut.convierteDeRomanoADecimal("CXC"),190,"Debe ser 190")
        XCTAssertEqual(try sut.convierteDeRomanoADecimal("CD"),400,"Debe ser 400")
        XCTAssertEqual(try sut.convierteDeRomanoADecimal("CDL"),450,"Debe ser 450")
        XCTAssertEqual(try sut.convierteDeRomanoADecimal("CDXCV"),495,"Debe ser 495")
        XCTAssertEqual(try sut.convierteDeRomanoADecimal("DCLXVI"),666,"Debe ser 666")
        XCTAssertEqual(try sut.convierteDeRomanoADecimal("DCCC"),800,"Debe ser 800")
        XCTAssertEqual(try sut.convierteDeRomanoADecimal("CMXC"),990,"Debe ser 990")
        XCTAssertEqual(try sut.convierteDeRomanoADecimal("CMXCIX"),999,"Debe ser 999")
        XCTAssertEqual(try sut.convierteDeRomanoADecimal("MD"),1500,"Debe ser 1500")
        XCTAssertEqual(try sut.convierteDeRomanoADecimal("MMMDCCCLXXXVIII"),3888,"Debe ser 3888")
     
    }
    
    //MARK: - Convierte Decimal a Romano -
    
    func testDebeLazarErrorInputNegativo() throws {
        XCTAssertThrowsErrorEqual(try sut.convierteDeDecimalARomano(-500), ErrorDecimal.negativo)
        XCTAssertThrowsErrorEqual(try sut.convierteDeDecimalARomano(0), ErrorDecimal.negativo)
    }
    
    func testDebeLanzarErrorDesbordamiento() throws {
        XCTAssertThrowsErrorEqual(try sut.convierteDeDecimalARomano(4_000), ErrorDecimal.desbordamiento)
        XCTAssertThrowsErrorEqual(try sut.convierteDeDecimalARomano(10_000), ErrorDecimal.desbordamiento)
    }
    
    func testNumerosDecimalesARomano() throws {
        XCTAssertEqual(try sut.convierteDeDecimalARomano(4), "IV","Debe ser IV")
        XCTAssertEqual(try sut.convierteDeDecimalARomano(9), "IX","Debe ser IX")
        XCTAssertEqual(try sut.convierteDeDecimalARomano(39), "XXXIX","Debe ser XXXIX")
        XCTAssertEqual(try sut.convierteDeDecimalARomano(45), "XLV","Debe ser XLV")
        XCTAssertEqual(try sut.convierteDeDecimalARomano(190), "CXC","Debe ser CXC")
        XCTAssertEqual(try sut.convierteDeDecimalARomano(400), "CD","Debe ser CD")
        XCTAssertEqual(try sut.convierteDeDecimalARomano(450), "CDL","Debe ser CDXCV")
        XCTAssertEqual(try sut.convierteDeDecimalARomano(495),  "CDXCV","Debe ser CDXCV")
        XCTAssertEqual(try sut.convierteDeDecimalARomano(666), "DCLXVI","Debe ser DCLXVI")
        XCTAssertEqual(try sut.convierteDeDecimalARomano(800), "DCCC","Debe ser DCCC")
        XCTAssertEqual(try sut.convierteDeDecimalARomano(990), "CMXC","Debe ser CMXC")
        XCTAssertEqual(try sut.convierteDeDecimalARomano(999), "CMXCIX","Debe ser CMXCIX")
        XCTAssertEqual(try sut.convierteDeDecimalARomano(1500), "MD","Debe ser MD")
        XCTAssertEqual(try sut.convierteDeDecimalARomano(3888), "MMMDCCCLXXXVIII","Debe ser MMMDCCCLXXXVIII")
    }
    
}
