//
//  WarmUpTests.swift
//  KatasSwift
//
//  Created by Adrian Iraizos Mendoza on 19/12/24.
//

import XCTest

@testable import KatasSwift
final class WarmUpCuentaBinariaTests: XCTestCase {

    func testCuentaBinariaNormalCases() {
        let numbers: [(n:Int,r:Int)] = [(1041,5),
                       (15,0),
                       (32,0),
                       (19,2),
                       (1162,3),
                       (51712,2),
                       (561892,3),
                       (74901729,4),
                       (805306373,25),
                       (1376796946,5),
                       (1073741825,29),
                       (1610612737,28)]
        
        for n in numbers {
            let result = WarmUp.cuentaBinaria(para: n.n)
            
            XCTAssertEqual(n.r, result, "El resultado debe ser \(n.r) y ha mostrado \(result)")
        }
    }
    
    func testCuentaBinariaEdgeCases() {
        let numbers: [(n:Int,r:Int)] = [(1,0),(15,0),(2147483647,0),(328,2),(83886082,22),(-100000,0),(Int.max,0),(-Int.max,0)]
        
        for n in numbers {
            let result = WarmUp.cuentaBinaria(para: n.n)
            
            XCTAssertEqual(n.r, result, "El resultado debe ser \(n.r) y ha mostrado \(result)")
        }
    }
}
