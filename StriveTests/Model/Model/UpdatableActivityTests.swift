//
//  UpdatableActivityTests.swift
//  StriveTests
//
//  Created by Uday Pandey on 19/06/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//
@testable import Strive
import XCTest

class UpdatableActivityTests: XCTestCase {
    func testUpdatableActivity() {
        guard let updatableActivities: [UpdatableActivity] = model(from: "UpdatableActivityTests") else {
            XCTFail("Failed to parse")
            return
        }

        XCTAssertNotNil(updatableActivities, "Invalid instance")
        XCTAssertEqual(updatableActivities.count, 2, "Invalid count")

        var updatableActivity = updatableActivities[0]
        XCTAssertNotNil(updatableActivity.activityDescription, "Invalid value")
        XCTAssertNotNil(updatableActivity.name, "Invalid value")

        updatableActivity = updatableActivities[1]
        XCTAssertNotNil(updatableActivity.activityDescription, "Invalid value")
        XCTAssertNotNil(updatableActivity.name, "Invalid value")
    }
}
