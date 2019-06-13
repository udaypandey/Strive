//
//  ActivityStats.swift
//  Strive
//
//  Created by Uday Pandey on 19/06/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//

import Foundation

public struct ActivityStats: Codable {
    public let allRideTotals: ActivityTotal
    public let allRunTotals: ActivityTotal
    public let allSwimTotals: ActivityTotal
    public let recentRideTotals: ActivityTotal
    public let recentRunTotals: ActivityTotal
    public let recentSwimTotals: ActivityTotal
    public let ytdRideTotals: ActivityTotal
    public let ytdRunTotals: ActivityTotal
    public let ytdSwimTotals: ActivityTotal

    public let biggestClimbElevationGain: Double
    public let biggestRideDistance: Double

    private enum CodingKeys: String, CodingKey {
        case allRideTotals = "all_ride_totals"
        case allRunTotals = "all_run_totals"
        case allSwimTotals = "all_swim_totals"
        case recentRideTotals = "recent_ride_totals"
        case recentRunTotals = "recent_run_totals"
        case recentSwimTotals = "recent_swim_totals"
        case ytdRideTotals = "ytd_ride_totals"
        case ytdRunTotals = "ytd_run_totals"
        case ytdSwimTotals = "ytd_swim_totals"

        case biggestClimbElevationGain = "biggest_climb_elevation_gain"
        case biggestRideDistance = "biggest_ride_distance"
    }
}
