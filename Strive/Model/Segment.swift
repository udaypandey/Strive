//
//  Segment.swift
//  Strive
//
//  Created by Uday Pandey on 03/06/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//

import Foundation

public struct Segment: Codable {
    public let activityType: ActivityType
    public let athleteCount: Int?
    // public let athleteSegmentStats: Int
    public let averageGrade: Double
    public let city: String
    public let climbCategory: Int
    public let country: String
    public let createdAt: Date?
    public let distance: Double
    public let effortCount: Int?
    public let elevationHigh: Double
    public let elevationLow: Double
    public let endLatitude: Double
//    public let endLatlng: LatLng
    public let endLongitude: Double
    public let hazardous: Bool
    public let id: Int
    public let map: PolylineMap?
    public let maximumGrade: Double
    public let name: String
    public let isPrivate: Bool
    public let resourceState: ResourceState
    public let starCount: Int?
    public let starred: Bool
    public let startLatitude: Double
//    public let startLatlng: LatLng
    public let startLongitude: Double
    public let state: String?
    public let totalElevationGain: Double?
    public let updatedAt: Date?

    private enum CodingKeys: String, CodingKey {
        case activityType = "activity_type"
        case athleteCount = "athlete_count"
        // case athleteSegmentStats = "athlete_segment_stats"
        case averageGrade = "average_grade"
        case city
        case climbCategory = "climb_category"
        case country
        case createdAt = "created_at"
        case distance
        case effortCount = "effort_count"
        case elevationHigh = "elevation_high"
        case elevationLow = "elevation_low"
        case endLatitude = "end_latitude"
//        case endLatlng = "end_latlng"
        case endLongitude = "end_longitude"
        case hazardous
        case id
        case map
        case maximumGrade = "maximum_grade"
        case name
        case isPrivate = "private"
        case resourceState = "resource_state"
        case starCount = "star_count"
        case starred
        case startLatitude = "start_latitude"
//        case startLatlng = "start_latlng"
        case startLongitude = "start_longitude"
        case state
        case totalElevationGain = "total_elevation_gain"
        case updatedAt = "updated_at"
    }
}
