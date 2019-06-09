//
//  Split.swift
//  Strive
//
//  Created by Uday Pandey on 13/06/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//

import Foundation

public struct Split: Codable {
    public let distance: Double
    public let elapsedTime: Int
    public let elevationDifference: Double
    public let movingTime: Int
    public let split: Int
    public let averageSpeed: Double
    public let averageHeartRate: Double
    public let paceZone: Int

    private enum CodingKeys: String, CodingKey {
        case distance
        case elapsedTime = "elapsed_time"
        case elevationDifference = "elevation_difference"
        case movingTime = "moving_time"
        case split
        case averageSpeed = "average_speed"
        case averageHeartRate = "average_heartrate"
        case paceZone = "pace_zone"
    }
}
