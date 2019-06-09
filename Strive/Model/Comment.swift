//
//  Comment.swift
//  Strive
//
//  Created by Uday Pandey on 11/06/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//

import Foundation

public struct Comment: Codable {
    public let activityId: Int
    public let athlete: Athlete
    public let createdAt: Date
    public let id: Int
    public let mentionsMetadata: String?
    public let postId: Int?
    public let resourceState: ResourceState
    public let text: String

    private enum CodingKeys: String, CodingKey {
        case activityId = "activity_id"
        case athlete
        case createdAt = "created_at"
        case id
        case mentionsMetadata = "mentions_metadata"
        case postId = "post_id"
        case resourceState = "resource_state"
        case text
    }
}
