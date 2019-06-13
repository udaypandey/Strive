//
//  SegmentEffort.swift
//  Strive
//
//  Created by Uday Pandey on 03/06/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//

import Foundation

public struct SegmentEffort: Codable {
    // public let achievements: Int
//    public let activity: Activity?
//    public let athlete: Athlete?
//    public let athleteSegmentStats: Int
    public let averageHeartrate: Double
    public let distance: Double
    public let elapsedTime: Int
    public let endIndex: Int
    public let id: Int
    public let komRank: Int?
    public let maxHeartrate: Double
    public let movingTime: Int
    public let name: String
    public let prRank: Int?
    public let resourceState: ResourceState
//    public let segment: Segment?
    public let startDate: Date
    public let startDateLocal: Date
    public let startIndex: Int

    private enum CodingKeys: String, CodingKey {
//        case achievements
//        case activity
//        case athlete
//        case athleteSegmentStats = "athlete_segment_stats"
        case averageHeartrate = "average_heartrate"
        case distance
        case elapsedTime = "elapsed_time"
        case endIndex = "end_index"
        case id
        case komRank = "kom_rank"
        case maxHeartrate = "max_heartrate"
        case movingTime = "moving_time"
        case name
        case prRank = "pr_rank"
        case resourceState = "resource_state"
//        case segment
        case startDate = "start_date"
        case startDateLocal = "start_date_local"
        case startIndex = "start_index"
    }
}
