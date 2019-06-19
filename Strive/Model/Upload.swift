//
//  Upload.swift
//  Strive
//
//  Created by Uday Pandey on 03/06/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//

import Foundation

public struct Upload: Codable {
    public let externalId: String?
    public let error: String?
    public let status: String
    public let activityId: Int

    private enum CodingKeys: String, CodingKey {
        case externalId = "external_id"
        case error
        case status
        case activityId = "activity_id"
    }
}
