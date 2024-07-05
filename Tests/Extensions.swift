//
//  File.swift
//  
//
//  Created by Adrian Iraizos Mendoza on 4/7/24.
//

import Foundation
import XCTest

extension XCTest {
func XCTAssertThrowsErrorEqual<E: Error & Equatable>(_ expression: @autoclosure () throws -> any Equatable,
                                                         _ expectedError: E,
                                                         file: StaticString = #file,
                                                         line: UInt = #line) {
        var thrownError: Error?
        var errorType: (any Error.Type)?
        XCTAssertThrowsError(try expression()) { error in
            thrownError = error
            errorType = type(of: error)
        }
        XCTAssertTrue(thrownError is E,
                      "Unexpected error type: \(String(describing: errorType)) insted of \(E.Type.self)", file: file, line: line)
        if let unwrappedThrownError = thrownError as? E {
            XCTAssertEqual(unwrappedThrownError, expectedError,
                           "Error was not equal to the expected error", file: file, line: line)
        }
    }
}
