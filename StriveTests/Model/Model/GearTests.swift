//
//  GearTests.swift
//  StriveTests
//
//  Created by Uday Pandey on 12/06/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//

@testable import Strive
import XCTest

class GearTests: XCTestCase {
    func testGear() {
        guard let gears: [Gear] = model(from: "GearTests") else {
            XCTFail("Failed to parse")
            return
        }

        XCTAssertNotNil(gears, "Invalid instance")
        XCTAssertEqual(gears.count, 2, "Invalid count")

        var gear = gears[0]
        XCTAssertEqual(gear.resourceState, .detailed, "Invalid count")
        XCTAssertNotNil(gear.name, "Invalid instance")

        gear = gears[1]
        XCTAssertEqual(gear.resourceState, .summary, "Invalid count")
        XCTAssertNotNil(gear.name, "Invalid instance")
    }
}
