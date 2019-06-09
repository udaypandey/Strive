//
//  LatLngTests.swift
//  StriveTests
//
//  Created by Uday Pandey on 12/06/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//

@testable import Strive
import XCTest

class LatLngTests: XCTestCase {
    func testLatLng() {
        guard let latLng: LatLng = model(from: "LatLngTests") else {
            XCTFail("Failed to parse")
            return
        }

        XCTAssertEqual(latLng.latitude, 34, "Invalid count")
        XCTAssertEqual(latLng.longitude, 34, "Invalid count")
    }
}
