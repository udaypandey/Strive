//
//  FaultTests.swift
//  StriveTests
//
//  Created by Uday Pandey on 13/06/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//

@testable import Strive
import XCTest

class FaultTests: XCTestCase {
    func testFault() {
        guard let faults: [Fault] = model(from: "FaultTests") else {
            XCTFail("Failed to parse")
            return
        }

        XCTAssertNotNil(faults, "Invalid instance")
        XCTAssertEqual(faults.count, 2, "Invalid count")

        var fault = faults[0]
        XCTAssertNotNil(fault.message, "Invalid value")
        XCTAssertNotNil(fault.errors, "Invalid value")
        var error = fault.errors[0]
        XCTAssertNotNil(error.code, "Invalid value")
        XCTAssertNotNil(error.field, "Invalid value")
        XCTAssertNotNil(error.resource, "Invalid value")

        fault = faults[1]
        XCTAssertNotNil(fault.message, "Invalid value")
        XCTAssertNotNil(fault.errors, "Invalid value")
        error = fault.errors[0]
        XCTAssertNotNil(error.code, "Invalid value")
        XCTAssertNotNil(error.field, "Invalid value")
        XCTAssertNotNil(error.resource, "Invalid value")
    }
}
