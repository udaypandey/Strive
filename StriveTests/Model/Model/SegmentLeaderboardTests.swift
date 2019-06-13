//
//  SegmentLeaderboardTests.swift
//  StriveTests
//
//  Created by Uday Pandey on 13/06/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//

@testable import Strive
import XCTest

class SegmentLeaderboardTests: XCTestCase {
    func testSegmentLeaderboard() {
        guard let segmentLeaderboards: [SegmentLeaderboard] = model(from: "SegmentLeaderboardTests") else {
            XCTFail("Failed to parse")
            return
        }

        XCTAssertNotNil(segmentLeaderboards, "Invalid instance")
        XCTAssertEqual(segmentLeaderboards.count, 1, "Invalid count")

        let segmentLeaderboard = segmentLeaderboards[0]
        XCTAssertNotNil(segmentLeaderboard.entries, "Invalid instance")
        XCTAssertEqual(segmentLeaderboard.entries.count, 15, "Invalid value")
        XCTAssertEqual(segmentLeaderboard.effortCount, 147, "Invalid value")
        XCTAssertEqual(segmentLeaderboard.entryCount, 147, "Invalid value")
    }
}
