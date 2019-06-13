//
//  ActivityTotal.swift
//  Strive
//
//  Created by Uday Pandey on 19/06/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//
import Foundation

public struct ActivityTotal: Codable {
    public let achievementCount: Int?
    public let count: Int
    public let distance: Double
    public let elapsedTime: Int
    public let elevationGain: Double
    public let movingTime: Int

    private enum CodingKeys: String, CodingKey {
        case achievementCount = "achievement_count"
        case count
        case distance
        case elapsedTime = "elapsed_time"
        case elevationGain = "elevation_gain"
        case movingTime = "moving_time"
    }
}
