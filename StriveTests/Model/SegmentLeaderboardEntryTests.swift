//
//  SegmentLeaderboardEntryTests.swift
//  StriveTests
//
//  Created by Uday Pandey on 13/06/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//
@testable import Strive
import XCTest

class SegmentLeaderboardEntryTests: XCTestCase {
    func testSegmentLeaderboardEntry() {
        guard let segmentLeaderboardEntries: [SegmentLeaderboardEntry] = model(from: "SegmentLeaderboardEntryTests") else {
            XCTFail("Failed to parse")
            return
        }

        XCTAssertNotNil(segmentLeaderboardEntries, "Invalid instance")
        XCTAssertEqual(segmentLeaderboardEntries.count, 4, "Invalid count")

        var segmentLeaderboardEntry = segmentLeaderboardEntries[0]
        XCTAssertNotNil(segmentLeaderboardEntry.athleteName, "Invalid instance")
        XCTAssertNotNil(segmentLeaderboardEntry.startDate, "Invalid instance")
        XCTAssertNotNil(segmentLeaderboardEntry.startDateLocal, "Invalid instance")

        segmentLeaderboardEntry = segmentLeaderboardEntries[1]
        XCTAssertNotNil(segmentLeaderboardEntry.athleteName, "Invalid instance")
        XCTAssertNotNil(segmentLeaderboardEntry.startDate, "Invalid instance")
        XCTAssertNotNil(segmentLeaderboardEntry.startDateLocal, "Invalid instance")

        segmentLeaderboardEntry = segmentLeaderboardEntries[2]
        XCTAssertNotNil(segmentLeaderboardEntry.athleteName, "Invalid instance")
        XCTAssertNotNil(segmentLeaderboardEntry.startDate, "Invalid instance")
        XCTAssertNotNil(segmentLeaderboardEntry.startDateLocal, "Invalid instance")
    }
}
