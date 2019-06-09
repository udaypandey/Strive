//
//  CommentTests.swift
//  StriveTests
//
//  Created by Uday Pandey on 11/06/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//

@testable import Strive
import XCTest

class CommentTests: XCTestCase {
    func testComment() {
        guard let comments: [Comment] = model(from: "CommentTests") else {
            XCTFail("Failed to parse")
            return
        }

        XCTAssertNotNil(comments, "Invalid instance")
        XCTAssertEqual(comments.count, 1, "Invalid count")
    }
}
