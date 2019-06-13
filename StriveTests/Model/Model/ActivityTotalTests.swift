//
//  ActivityTotalTests.swift
//  StriveTests
//
//  Created by Uday Pandey on 19/06/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//
@testable import Strive
import XCTest

class ActivityTotalTests: XCTestCase {
    func testActivityTotal() {
        guard let activityTotals: [ActivityTotal] = model(from: "ActivityTotalTests") else {
            XCTFail("Failed to parse")
            return
        }

        XCTAssertNotNil(activityTotals, "Invalid instance")
        XCTAssertEqual(activityTotals.count, 9, "Invalid count")

        var activityTotal = activityTotals[0]
        XCTAssertEqual(activityTotal.count, 10, "Invalid count")

        activityTotal = activityTotals[1]
        XCTAssertEqual(activityTotal.count, 126, "Invalid count")
    }
}
