//
//  SplitTests.swift
//  StriveTests
//
//  Created by Uday Pandey on 13/06/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//
@testable import Strive
import XCTest

class SplitTests: XCTestCase {
    func testSplit() {
        guard let splits: [Split] = model(from: "SplitTests") else {
            XCTFail("Failed to parse")
            return
        }

        XCTAssertNotNil(splits, "Invalid instance")
        XCTAssertEqual(splits.count, 17, "Invalid count")
    }
}
