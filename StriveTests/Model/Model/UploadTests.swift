//
//  UploadTests.swift
//  StriveTests
//
//  Created by Uday Pandey on 19/06/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//
@testable import Strive
import XCTest

class UploadTests: XCTestCase {
    func testUpload() {
        guard let uploads: [Upload] = model(from: "UploadTests") else {
            XCTFail("Failed to parse")
            return
        }

        XCTAssertNotNil(uploads, "Invalid instance")
        XCTAssertEqual(uploads.count, 2, "Invalid count")

        var upload = uploads[0]
        XCTAssertNotNil(upload.status, "Invalid value")
        XCTAssertNotNil(upload.externalId, "Invalid value")

        upload = uploads[1]
        XCTAssertNotNil(upload.status, "Invalid value")
        XCTAssertNotNil(upload.externalId, "Invalid value")
    }
}
