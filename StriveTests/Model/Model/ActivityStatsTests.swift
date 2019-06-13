//
//  ActivityStatsTests.swift
//  StriveTests
//
//  Created by Uday Pandey on 19/06/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//
@testable import Strive
import XCTest

class ActivityStatsTests: XCTestCase {
    func testActivityStats() {
        guard let activityStats: [ActivityStats] = model(from: "ActivityStatsTests") else {
            XCTFail("Failed to parse")
            return
        }

        XCTAssertNotNil(activityStats, "Invalid instance")
        XCTAssertEqual(activityStats.count, 1, "Invalid count")

        let activityStat = activityStats[0]
        XCTAssertNotNil(activityStat.allRideTotals, "Invalid activityTotal")
        XCTAssertNotNil(activityStat.allRunTotals, "Invalid activityTotal")
        XCTAssertNotNil(activityStat.allSwimTotals, "Invalid activityTotal")
        XCTAssertNotNil(activityStat.recentRideTotals, "Invalid activityTotal")
        XCTAssertNotNil(activityStat.recentRunTotals, "Invalid activityTotal")
        XCTAssertNotNil(activityStat.recentSwimTotals, "Invalid activityTotal")
        XCTAssertNotNil(activityStat.ytdRunTotals, "Invalid activityTotal")
        XCTAssertNotNil(activityStat.ytdRideTotals, "Invalid activityTotal")
        XCTAssertNotNil(activityStat.ytdSwimTotals, "Invalid activityTotal")
    }
}
