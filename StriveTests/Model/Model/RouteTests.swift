//
//  RouteTests.swift
//  StriveTests
//
//  Created by Uday Pandey on 11/06/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//
@testable import Strive
import XCTest

class RouteTests: XCTestCase {
    func testRoute() {
        guard let routes: [Route] = model(from: "RouteTests") else {
            XCTFail("Failed to parse")
            return
        }

        XCTAssertNotNil(routes, "Invalid instance")
        XCTAssertEqual(routes.count, 3, "Invalid count")

        var route = routes[0]
        XCTAssertEqual(route.resourceState, .detailed, "Invalid resource state")
        XCTAssertNotNil(route.createdAt, "Invalid value")
        XCTAssertNotNil(route.updatedAt, "Invalid value")
        XCTAssertNotNil(route.name, "Invalid value")

        route = routes[1]
        XCTAssertEqual(route.resourceState, .summary, "Invalid resource state")
        XCTAssertNotNil(route.createdAt, "Invalid value")
        XCTAssertNotNil(route.updatedAt, "Invalid value")
        XCTAssertNotNil(route.name, "Invalid value")

        route = routes[2]
        XCTAssertEqual(route.resourceState, .detailed, "Invalid resource state")
        XCTAssertNotNil(route.createdAt, "Invalid value")
        XCTAssertNotNil(route.updatedAt, "Invalid value")
        XCTAssertNotNil(route.name, "Invalid value")
    }
}
