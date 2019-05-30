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
        let race: Club? = object(from: "ClubTests")
        XCTAssertNotNil(race, "Invalid instance")
    }
}
