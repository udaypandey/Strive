//
//  AthleteTests.swift
//  StriveTests
//
//  Created by Uday Pandey on 12/06/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//

@testable import Strive
import XCTest

class AthleteTests: XCTestCase {
    func testAthlete() {
        guard let athletes: [Athlete] = model(from: "AthleteTests") else {
            XCTFail("Failed to parse")
            return
        }

        XCTAssertNotNil(athletes, "Invalid instance")
        XCTAssertEqual(athletes.count, 2, "Invalid count")

        var athlete = athletes[0]
        XCTAssertEqual(athlete.resourceState, .detailed, "Invalid count")

        athlete = athletes[1]
        XCTAssertEqual(athlete.resourceState, .summary, "Invalid count")
    }
}
