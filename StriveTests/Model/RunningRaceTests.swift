//
//  RunningRaceTests.swift
//  StriveTests
//
//  Created by Uday Pandey on 03/06/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//

@testable import Strive
import XCTest

class RunningRaceTests: XCTestCase {
    func testRunningRace() {
        guard let races: [RunningRace] = model(from: "RunningRaceTests") else {
            XCTFail("Failed to parse")
            return
        }

        XCTAssertNotNil(races, "Invalid instance")
        XCTAssertEqual(races.count, 2, "Invalid count")

        var race = races[0]
        XCTAssertEqual(race.resourceState, .detailed, "Invalid count")
        XCTAssertEqual(race.runningRaceType, .road, "Invalid count")

        race = races[1]
        XCTAssertEqual(race.resourceState, .summary, "Invalid count")
        XCTAssertEqual(race.runningRaceType, .road, "Invalid count")
    }
}
