//
//  LapTests.swift
//  StriveTests
//
//  Created by Uday Pandey on 13/06/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//
@testable import Strive
import XCTest

class LapTests: XCTestCase {
    func testLap() {
        guard let laps: [Lap] = model(from: "LapTests") else {
            XCTFail("Failed to parse")
            return
        }

        XCTAssertNotNil(laps, "Invalid instance")
        XCTAssertEqual(laps.count, 1, "Invalid count")

        let lap = laps[0]
        XCTAssertEqual(lap.resourceState, .summary, "Invalid count")
        XCTAssertNotNil(lap.startDate, "Invalid value")
    }
}
