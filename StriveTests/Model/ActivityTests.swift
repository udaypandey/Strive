//
//  ActivityTests.swift
//  StriveTests
//
//  Created by Uday Pandey on 12/06/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//

@testable import Strive
import XCTest

class ActivityTests: XCTestCase {
    func testActivity() {
        guard let activities: [Activity] = model(from: "ActivityTests") else {
            XCTFail("Failed to parse")
            return
        }

        XCTAssertNotNil(activities, "Invalid instance")
        XCTAssertEqual(activities.count, 2, "Invalid count")

        var activity = activities[0]
        XCTAssertEqual(activity.resourceState, .summary, "Invalid count")

        activity = activities[1]
        XCTAssertEqual(activity.resourceState, .detailed, "Invalid count")
    }
}
