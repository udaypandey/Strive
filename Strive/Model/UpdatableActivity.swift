//
//  UpdatableActivity.swift
//  Strive
//
//  Created by Uday Pandey on 19/06/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//

import Foundation

public struct UpdatableActivity: Codable {
    public let commute: Bool
    public let trainer: Bool
    public let activityDescription: String
    public let name: String
    public let type: ActivityType
    public let gearId: String?

    private enum CodingKeys: String, CodingKey {
        case commute
        case trainer
        case activityDescription = "description"
        case name
        case type = "activity_type"
        case gearId = "gear_id"
    }
}
