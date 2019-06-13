//
//  SegmentEffortTests.swift
//  StriveTests
//
//  Created by Uday Pandey on 13/06/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//
@testable import Strive
import XCTest

class SegmentEffortTests: XCTestCase {
    func testSegmentEffort() {
        guard let segmentEfforts: [SegmentEffort] = model(from: "SegmentEffortTests") else {
            XCTFail("Failed to parse")
            return
        }

        XCTAssertNotNil(segmentEfforts, "Invalid instance")
        XCTAssertEqual(segmentEfforts.count, 19, "Invalid count")

        var segmentEffort = segmentEfforts[0]
        XCTAssertEqual(segmentEffort.resourceState, .detailed, "Invalid value")
        XCTAssertNotNil(segmentEffort.name, "Invalid value")
        XCTAssertNotNil(segmentEffort.startDate, "Invalid value")
        XCTAssertNotNil(segmentEffort.startDateLocal, "Invalid value")

        segmentEffort = segmentEfforts[1]
        XCTAssertEqual(segmentEffort.resourceState, .summary, "Invalid value")
        XCTAssertNotNil(segmentEffort.name, "Invalid value")
        XCTAssertNotNil(segmentEffort.startDate, "Invalid value")
        XCTAssertNotNil(segmentEffort.startDateLocal, "Invalid value")
    }
}
