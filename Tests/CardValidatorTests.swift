//
//  CardValidatorTests.swift
//
//
//  Created by Adrian Iraizos Mendoza on 9/9/24.
//

import XCTest

@testable import KatasSwift
final class CardValidatorTests: XCTestCase {
    
    var sut: CardValidator!
    
    override func setUpWithError() throws {
        sut = CardValidator()
    }
    
    override func tearDownWithError() throws {
        sut = nil
    }
    
    func testShouldThrowNegativeError() throws {
        for card in TestsCardNumbers.negative {
            XCTAssertThrowsErrorEqual(try sut.validate(bankCard: card), CardError.negativo)
        }
    }
    
    func testShouldThrowFormatError() throws {
        for card in TestsCardNumbers.incorrectFormat {
            XCTAssertThrowsErrorEqual(try sut.validate(bankCard: card), CardError.formato)
        }
    }
    
    func testShouldBeValid() throws {
        for card in TestsCardNumbers.validCards {
            XCTAssertTrue(try sut.validate(bankCard: card))
        }
    }
    func testShouldBeInvalid() throws {
        for card in TestsCardNumbers.validCards {
            XCTAssertFalse(try sut.validate(bankCard: card))
        }
    }
}


fileprivate struct TestsCardNumbers {
    static let validCards = [
        BankCard("4539","1488","0343","6467"),
        BankCard("4716","1234","5678","9012"),
        BankCard("4916","6512","3456","7890"),
        BankCard("5404","1234","5678","9010"),
        BankCard("5296","7890","1234","5678"),
        BankCard("5222","8765","4321","0987"),
        BankCard("4485","1234","5678","9101"),
        BankCard("4556","2345","6789","0123"),
        BankCard("5156","2345","6789","1234"),
        BankCard("2223","4567","8901","2345")
    ]
    
    static let invalidCard = [
        BankCard("1234","5678","9101","1121"),
        BankCard("8765","4321","1234","5670"),
        BankCard("0000","1111","2222","3333"),
        BankCard("9999","8888","7777","6666"),
        BankCard("5432","1098","7654","3210"),
        BankCard("1111","1111","1111","1111"),
        BankCard("1234","1234","1234","1234"),
        BankCard("9999","0000","8888","1111"),
        BankCard("5432","1234","5678","9013"),
        BankCard("0000","0000","0000","0000")
    ]
    
    static let negative = [
        BankCard("-234","5678","9101","1121"),
        BankCard("1234","-678","9101","1121"),
        BankCard("1234","5678","-101","1121"),
        BankCard("1234","5678","9101","-121"),
    ]
    static let incorrectFormat = [
        BankCard("12345","67891","01","1121"),
        BankCard("12","345678","0","011121"),
        BankCard("12","3456","789101","1121"),
        BankCard("1234","5678","910","1121"),
    ]
}


