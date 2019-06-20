//
//  PhotoSummaryPrimaryTests.swift
//  StriveTests
//
//  Created by Uday Pandey on 20/06/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//
@testable import Strive
import XCTest

class PhotoSummaryPrimaryTests: XCTestCase {
    func testPhotoSummaryPrimary() {
        guard let photoSummaryPrimaries: [PhotoSummaryPrimary] = model(from: "PhotoSummaryPrimaryTests") else {
            XCTFail("Failed to parse")
            return
        }

        XCTAssertNotNil(photoSummaryPrimaries, "Invalid instance")
        XCTAssertEqual(photoSummaryPrimaries.count, 1, "Invalid count")

        let photoSummaryPrimary = photoSummaryPrimaries[0]
        XCTAssertNotNil(photoSummaryPrimary.urls, "Invalid value")
        XCTAssertEqual(photoSummaryPrimary.urls.count, 2, "Invalid count")
    }
}
