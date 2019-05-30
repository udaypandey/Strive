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
        let race: RunningRace? = object(from: "RunningRaceTests")
        XCTAssertNotNil(race, "Invalid instance")
    }
}
