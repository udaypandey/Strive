//
//  SegmentTests.swift
//  StriveTests
//
//  Created by Uday Pandey on 13/06/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//

@testable import Strive
import XCTest

class SegmentTests: XCTestCase {
    func testSegment() {
        guard let segments: [Segment] = model(from: "SegmentTests") else {
            XCTFail("Failed to parse")
            return
        }

        XCTAssertNotNil(segments, "Invalid instance")
        XCTAssertEqual(segments.count, 6, "Invalid count")

        var segment = segments[0]
        XCTAssertEqual(segment.resourceState, .detailed, "Invalid count")
        XCTAssertNotNil(segment.country, "Invalid value")
        XCTAssertNotNil(segment.city, "Invalid value")
        XCTAssertNotNil(segment.state, "Invalid value")

        segment = segments[1]
        XCTAssertEqual(segment.resourceState, .summary, "Invalid count")
        XCTAssertNotNil(segment.country, "Invalid value")
        XCTAssertNotNil(segment.city, "Invalid value")
        XCTAssertNotNil(segment.state, "Invalid value")
    }
}
