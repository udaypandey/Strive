//
//  PhotoSummaryPrimary.swift
//  Strive
//
//  Created by Uday Pandey on 20/06/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//

import Foundation

public struct PhotoSummaryPrimary: Codable {
    public let id: Int?
    public let source: Int
    public let uniqueId: String
    public let urls: [String: URL]

    private enum CodingKeys: String, CodingKey {
        case id
        case source
        case uniqueId = "unique_id"
        case urls
    }
}
