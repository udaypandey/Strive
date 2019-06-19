//
//  PowerStreamTests.swift
//  StriveTests
//
//  Created by Uday Pandey on 20/06/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//
@testable import Strive
import XCTest

class PowerStreamTests: XCTestCase {
    func testPowerStream() {
        guard let streams: [PowerStream] = model(from: "IntegerDataStreamTests") else {
            XCTFail("Failed to parse")
            return
        }

        XCTAssertNotNil(streams, "Invalid instance")
        XCTAssertEqual(streams.count, 1, "Invalid count")

        let stream = streams[0]
        XCTAssertEqual(stream.originalSize, 3715, "Invalid count")
        XCTAssertEqual(stream.resolution, .high, "Invalid type")
        XCTAssertEqual(stream.seriesType, .distance, "Invalid type")
        XCTAssertNotNil(stream.data, "Invalid value")
    }
}
