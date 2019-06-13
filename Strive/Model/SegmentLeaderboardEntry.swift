//
//  SegmentLeaderboardEntry.swift
//  Strive
//
//  Created by Uday Pandey on 13/06/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//

import Foundation

public struct SegmentLeaderboardEntry: Codable {
    public let athleteName: String
    public let elapsedTime: Int
    public let movingTime: Int
    public let rank: Int
    public let startDate: Date
    public let startDateLocal: Date

    private enum CodingKeys: String, CodingKey {
        case athleteName = "athlete_name"
        case elapsedTime = "elapsed_time"
        case movingTime = "moving_time"
        case rank
        case startDate = "start_date"
        case startDateLocal = "start_date_local"
    }
}
