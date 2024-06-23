//
//  Reversed+CapitalizedTests.swift
//
//
//  Created by Adrian Iraizos Mendoza on 23/6/24.
//

import XCTest

@testable import KatasSwift

final class ReverseCapitalizeTests: XCTestCase {
    
    var sut: ReversedCapitalized!
    
    let respuesta = "Feature Una Era Bug El"
    
    let input1 = "el bug era una feature"
    let input2 = "EL BUG ERA UNA FEATURE"
    let input3 = "ELBUGERAUNAFEATURE"
    let input4 = "     "
    let input5 = "el    bug    era    una    feature     "
    let input6 = """
        el
    bug
    era
    una
    feature
    """
    let input7 = "el\nbug\nera\nuna\nfeature\n"
    let input8 = "el\nbug       era  una\tfeature\r"

    override func setUp() {
        sut = ReversedCapitalized()
    }
    
    override func tearDown() {
        sut = nil
    }
    
    // MARK: Level 1
    func testResverseAndCapitilizedLevel1()  {
        
        let result1 = sut.reversedAndCapitalized(input1)
        XCTAssertEqual(respuesta, result1)
        
        let result2 = sut.reversedAndCapitalized(input2)
        XCTAssertEqual(respuesta, result2)
        
        let result3 = sut.reversedAndCapitalized(input3)
        XCTAssertEqual("Elbugeraunafeature", result3)
    }
    
    // MARK: Level 2
    func testResverseAndCapitilizedLevel2()  {
        let result4 = sut.reversedAndCapitalized(input4)
        XCTAssertEqual("", result4)
        
        let result5 = sut.reversedAndCapitalized(input5)
        XCTAssertEqual(respuesta, result5)
        
    }
    
    //MARK: Level 3
    func testResverseAndCapitilizedLevel3() {
        let result6 = sut.reversedAndCapitalized(input6)
        XCTAssertEqual(respuesta, result6)
        
        let result7 = sut.reversedAndCapitalized(input7)
        XCTAssertEqual(respuesta, result7)
    }
}
