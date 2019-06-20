//
//  PhotoSummaryTests.swift
//  StriveTests
//
//  Created by Uday Pandey on 20/06/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//
@testable import Strive
import XCTest

class PhotoSummaryTests: XCTestCase {
    func testPhotoSummary() {
        guard let photoSummaries: [PhotoSummary] = model(from: "PhotoSummaryTests") else {
            XCTFail("Failed to parse")
            return
        }

        XCTAssertNotNil(photoSummaries, "Invalid instance")
        XCTAssertEqual(photoSummaries.count, 2, "Invalid count")

        var photoSummary = photoSummaries[0]
        XCTAssertNotNil(photoSummary.primary, "Invalid value")
        XCTAssertEqual(photoSummary.count, 1, "Invalid count")

        photoSummary = photoSummaries[1]
        XCTAssertNil(photoSummary.primary, "Invalid value")
        XCTAssertEqual(photoSummary.count, 0, "Invalid count")
    }
}
