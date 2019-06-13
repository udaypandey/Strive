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
        guard let latLngs: [LatLng] = model(from: "LatLngTests") else {
            XCTFail("Failed to parse")
            return
        }

        XCTAssertNotNil(latLngs, "Invalid instance")
        XCTAssertEqual(latLngs.count, 3, "Invalid count")

        var latLng = latLngs[0]
        XCTAssertEqual(latLng.latitude, 51.62, "Invalid count")
        XCTAssertEqual(latLng.longitude, -0.31, "Invalid count")

        latLng = latLngs[1]
        XCTAssertEqual(latLng.latitude, 51.621638, "Invalid count")
        XCTAssertEqual(latLng.longitude, -0.277668, "Invalid count")

        latLng = latLngs[2]
        XCTAssertEqual(latLng.latitude, 51.633889, "Invalid count")
        XCTAssertEqual(latLng.longitude, -0.28185, "Invalid count")
    }
}
