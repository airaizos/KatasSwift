//
//  ChocoFunReturnTests.swift
//  
//
//  Created by Adrian Iraizos Mendoza on 27/7/24.
//

import XCTest

@testable import KatasSwift

struct ChocoFuncTestCase {
    let budget: Double
    let price: Double
    let wrapper: Int
    let result: Int
}

final class ChocoFunReturnTests: XCTestCase {

    func testChocoFunc_Shoulbe4() throws {
        let testCase = ChocoFuncTestCase(budget: 10, price: 3, wrapper: 3, result: 4)
        let chocolatinas = try ChocoFunc.obtenerChocolatinas(prespuesto: testCase.budget, precio: testCase.price, envoltorios: testCase.wrapper)
        
        XCTAssertEqual(chocolatinas, testCase.result,"Deben ser \(testCase.result) chocolatinas")
    }
    
    func testChocoFunc_Shoulbe8() throws {
        let testCase = ChocoFuncTestCase(budget: 10, price: 1.5, wrapper: 3, result: 8)
        let chocolatinas = try ChocoFunc.obtenerChocolatinas(prespuesto: testCase.budget, precio: testCase.price, envoltorios: testCase.wrapper)
        
        XCTAssertEqual(chocolatinas, testCase.result,"Deben ser \(testCase.result) chocolatinas")
    }
    
    func testChocoFunc_Shoulbe265() throws {
        let testCase = ChocoFuncTestCase(budget: 100, price: 0.5, wrapper: 4, result: 265)
        let chocolatinas = try ChocoFunc.obtenerChocolatinas(prespuesto: testCase.budget, precio: testCase.price, envoltorios: testCase.wrapper)
        
        XCTAssertEqual(chocolatinas, testCase.result,"Deben ser \(testCase.result) chocolatinas")
    }
    
    func testChocoFunc_Shoulbe0() throws {
        let testCase = ChocoFuncTestCase(budget: 2, price: 6, wrapper: 2, result: 0)
        let chocolatinas = try ChocoFunc.obtenerChocolatinas(prespuesto: testCase.budget, precio: testCase.price, envoltorios: testCase.wrapper)
        
        XCTAssertEqual(chocolatinas, testCase.result,"Deben ser \(testCase.result) chocolatinas")
    }

    func testChocoFunc_Shoulbe44() throws {
        let testCase = ChocoFuncTestCase(budget: 10, price: 0.3333333333334, wrapper: 3, result: 44)
        let chocolatinas = try ChocoFunc.obtenerChocolatinas(prespuesto: testCase.budget, precio: testCase.price, envoltorios: testCase.wrapper)
        
        XCTAssertEqual(chocolatinas, testCase.result,"Deben ser \(testCase.result) chocolatinas")
    }
    
    //MARK: Envoltorios Error
    
    func testChocoFunc_Case1_ShoulbeThrowEnvoltoriosError() throws {
        let testCase = ChocoFuncTestCase(budget: 100, price: 5, wrapper: 0, result: 0)
        
        XCTAssertThrowsErrorEqual(try ChocoFunc.obtenerChocolatinas(prespuesto: testCase.budget, precio: testCase.price, envoltorios: testCase.wrapper), ChocoError.envoltorios, "Envoltorio: \(testCase.wrapper)")
    }
    
    func testChocoFunc_Case2_ShoulbeThrowsEnvoltorioError() throws {
        let testCase = ChocoFuncTestCase(budget: 100, price: 5, wrapper: 1, result: 0)
        
        XCTAssertThrowsErrorEqual(try ChocoFunc.obtenerChocolatinas(prespuesto: testCase.budget, precio: testCase.price, envoltorios: testCase.wrapper), ChocoError.envoltorios, "Envoltorio: \(testCase.wrapper)")
    }
    
    //MARK: Presupuesto Error
    
    func testChocoFunc_Case1_ShoulbeThrowsPresupuestoError() throws {
        let testCase = ChocoFuncTestCase(budget: 0.001, price: 5, wrapper: 2, result: 0)
        
        XCTAssertThrowsErrorEqual(try ChocoFunc.obtenerChocolatinas(prespuesto: testCase.budget, precio: testCase.price, envoltorios: testCase.wrapper), ChocoError.prespuesto, "Presupuesto: \(testCase.wrapper)")
    }
    
    func testChocoFunc_Case2_ShoulbeThrowsPresupuestoError() throws {
        let testCase = ChocoFuncTestCase(budget: -1, price: 5, wrapper: 10, result: 0)
        
        XCTAssertThrowsErrorEqual(try ChocoFunc.obtenerChocolatinas(prespuesto: testCase.budget, precio: testCase.price, envoltorios: testCase.wrapper), ChocoError.prespuesto, "Presupuesto: \(testCase.wrapper)")
    }
    
    //MARK: Precio Error
    func testChocoFunc_Case1_ShoulbeThrowsPriceError() throws {
        let testCase = ChocoFuncTestCase(budget: 100, price: 0.001, wrapper: 2, result: 0)
        
        XCTAssertThrowsErrorEqual(try ChocoFunc.obtenerChocolatinas(prespuesto: testCase.budget, precio: testCase.price, envoltorios: testCase.wrapper), ChocoError.precio, "Precio: \(testCase.wrapper)")
    }
    
    func testChocoFunc_Case2_ShoulbeThrowsPrecioError() throws {
        let testCase = ChocoFuncTestCase(budget: 100, price: -1, wrapper: 10, result: 0)
        
        XCTAssertThrowsErrorEqual(try ChocoFunc.obtenerChocolatinas(prespuesto: testCase.budget, precio: testCase.price, envoltorios: testCase.wrapper), ChocoError.precio, "Precio: \(testCase.wrapper)")
    }
    
    func testChocoFunc_Case3_ShoulbeThrowsPrecioError() throws {
        let testCase = ChocoFuncTestCase(budget: Double.infinity, price: Double.infinity, wrapper: 10, result: 0)
        
        XCTAssertThrowsErrorEqual(try ChocoFunc.obtenerChocolatinas(prespuesto: testCase.budget, precio: testCase.price, envoltorios: testCase.wrapper), ChocoError.precio, "Precio: \(testCase.wrapper)")
    }
}
