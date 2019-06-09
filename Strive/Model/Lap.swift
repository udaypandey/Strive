//
//  Lap.swift
//  Strive
//
//  Created by Uday Pandey on 13/06/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//

import Foundation

public struct Lap: Codable {
//    public let activity: Activity?
//    public let athlete: Athlete?
    public let averageHeartrate: Double
    public let averageSpeed: Double
    public let distance: Double
    public let elapsedTime: Int
    public let endIndex: Int
    public let id: Int
    public let lapIndex: Int
    public let maxHeartrate: Double
    public let maxSpeed: Double
    public let movingTime: Int
    public let name: String
    public let paceZone: Int
    public let resourceState: ResourceState
    public let split: Int
    public let startDate: Date
    public let startDateLocal: Date
    public let startIndex: Int
    public let totalElevationGain: Double

    private enum CodingKeys: String, CodingKey {
//        case activity
//        case athlete
        case averageHeartrate = "average_heartrate"
        case averageSpeed = "average_speed"
        case distance
        case elapsedTime = "elapsed_time"
        case endIndex = "end_index"
        case id
        case lapIndex = "lap_index"
        case maxHeartrate = "max_heartrate"
        case maxSpeed = "max_speed"
        case movingTime = "moving_time"
        case name
        case paceZone = "pace_zone"
        case resourceState = "resource_state"
        case split
        case startDate = "start_date"
        case startDateLocal = "start_date_local"
        case startIndex = "start_index"
        case totalElevationGain = "total_elevation_gain"
    }
}
