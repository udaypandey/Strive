//
//  UploadPayloadTests.swift
//  StriveTests
//
//  Created by Uday Pandey on 19/06/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//
@testable import Strive
import XCTest

class UploadPayloadTests: XCTestCase {
    func testUploadPayload() {
        guard let uploadPayloads: [UploadPayload] = model(from: "UploadPayloadTests") else {
            XCTFail("Failed to parse")
            return
        }

        XCTAssertNotNil(uploadPayloads, "Invalid instance")
        XCTAssertEqual(uploadPayloads.count, 2, "Invalid count")

        var uploadPayload = uploadPayloads[0]
        XCTAssertNotNil(uploadPayload.file, "Invalid value")
        XCTAssertNotNil(uploadPayload.name, "Invalid value")
        XCTAssertNotNil(uploadPayload.uploadDescription, "Invalid value")
        XCTAssertNotNil(uploadPayload.externalId, "Invalid value")

        uploadPayload = uploadPayloads[1]
        XCTAssertNotNil(uploadPayload.file, "Invalid value")
        XCTAssertNotNil(uploadPayload.name, "Invalid value")
        XCTAssertNotNil(uploadPayload.uploadDescription, "Invalid value")
        XCTAssertNotNil(uploadPayload.externalId, "Invalid value")
    }
}
