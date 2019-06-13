//
//  ClubTests.swift
//  StriveTests
//
//  Created by Uday Pandey on 05/06/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//

@testable import Strive
import XCTest

class ClubTests: XCTestCase {
    func testClub() {
        guard let clubs: [Club] = model(from: "ClubTests") else {
            XCTFail("Failed to parse")
            return
        }

        XCTAssertNotNil(clubs, "Invalid instance")
        XCTAssertEqual(clubs.count, 3, "Invalid count")

        var club = clubs[0]
        XCTAssertEqual(club.resourceState, .detailed, "Invalid count")

        club = clubs[1]
        XCTAssertEqual(club.resourceState, .summary, "Invalid count")

        club = clubs[2]
        XCTAssertEqual(club.resourceState, .summary, "Invalid count")
        XCTAssertNotNil(club.country, "Invalid value")
        XCTAssertNotNil(club.city, "Invalid value")
        XCTAssertNotNil(club.state, "Invalid value")
    }
}
