//
//  PolylineMapTests.swift
//  StriveTests
//
//  Created by Uday Pandey on 13/06/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//
@testable import Strive
import XCTest

class PolylineMapTests: XCTestCase {
    func testPolylineMap() {
        guard let polylineMaps: [PolylineMap] = model(from: "PolylineMapTests") else {
            XCTFail("Failed to parse")
            return
        }

        XCTAssertNotNil(polylineMaps, "Invalid instance")
        XCTAssertEqual(polylineMaps.count, 2, "Invalid count")

        var polylineMap = polylineMaps[0]
        XCTAssertEqual(polylineMap.resourceState, .detailed, "Invalid count")
        XCTAssertNotNil(polylineMap.id, "Invalid instance")
        XCTAssertNotNil(polylineMap.polyline, "Invalid instance")
        XCTAssertNotNil(polylineMap.summaryPolyline, "Invalid instance")

        polylineMap = polylineMaps[1]
        XCTAssertEqual(polylineMap.resourceState, .summary, "Invalid count")
        XCTAssertNotNil(polylineMap.id, "Invalid instance")
        XCTAssertNil(polylineMap.polyline, "Invalid instance")
        XCTAssertNotNil(polylineMap.summaryPolyline, "Invalid instance")
    }
}
