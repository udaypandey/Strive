//
//  Activity.swift
//  Strive
//
//  Created by Uday Pandey on 03/06/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//

import Foundation

public struct Activity: Codable {
    public enum Visibility: String, Codable {
        case everyone
        case none
    }

    let resourceState: ResourceState
//    let athlete: Athlete?
    let name: String
    let distance: Double
    let movingTime: Double
    let elapsedTime: Double
    let totalElevationGain: Double
    let type: String
    let workoutType: Int
    let id: Int
    let externalId: String
    let uploadId: Int?
    let startDate: Date
    let startDateLocal: Date
    let timezone: String
    let utcOffset: Int
    //    let startLatlng: LatLng
    //    let endLatlng: LatLng
    let locationCity: String?
    let locationState: String?
    let locationCountry: String?
    let startLatitude: Double
    let startLongitude: Double
    let achievementCount: Int
    let kudosCount: Int
    let commentCount: Int
    let athleteCount: Int
    let photoCount: Int
//    let map: PolylineMap?
    let trainer: Bool
    let commute: Bool
    let manual: Bool
    let isPrivate: Bool
    let visibility: Visibility
    let flagged: Bool
    let gearId: Gear?
    let fromAcceptedTag: Bool
    let averageSpeed: Double
    let maxSpeed: Double
    let hasHeartrate: Bool
    let averageHeartrate: Double
    let maxHeartrate: Double
    let heartrateOptOut: Bool
    let displayHideHeartrateOption: Bool
    let elevHigh: Double
    let elevLow: Double
    let prCount: Int
    let totalPhotoCount: Int
    let hasKudoed: Bool
    let activityDescription: String?
    let calories: Double?
    let segmentEfforts: [SegmentEffort]?
//    let splitsMetric: [Split]?
//    let splitsStandard: [Split]?
//    let laps: [Lap]
//    let bestEfforts: [String]?
//    let photos: URL?
    let deviceName: String?
    let embedToken: String?
//    let similarActivities: Activity?
//    let availableZones: [String]?

    private enum CodingKeys: String, CodingKey {
        case resourceState = "resource_state"
//        case athlete
        case name
        case distance
        case movingTime = "moving_time"
        case elapsedTime = "elapsed_time"
        case totalElevationGain = "total_elevation_gain"
        case type
        case workoutType = "workout_type"
case id
        case externalId = "external_id"
        case uploadId = "upload_id"
        case startDate = "start_date"
        case startDateLocal = "start_date_local"
        case timezone
        case utcOffset = "utc_offset"
//        case startLatlng = "start_latlng"
//        case endLatlng = "end_latlng"
        case locationCity = "location_city"
        case locationState = "location_state"
        case locationCountry = "location_country"
        case startLatitude = "start_latitude"
        case startLongitude = "start_longitude"
        case achievementCount = "achievement_count"
        case kudosCount = "kudos_count"
        case commentCount = "comment_count"
        case athleteCount = "athlete_count"
        case photoCount = "photo_count"
//        case map
        case trainer
        case commute
        case manual
        case isPrivate = "private"
        case visibility
        case flagged
        case gearId = "gear_id"
        case fromAcceptedTag = "from_accepted_tag"
        case averageSpeed = "average_speed"
        case maxSpeed = "max_speed"
        case hasHeartrate = "has_heartrate"
        case averageHeartrate = "average_heartrate"
        case maxHeartrate = "max_heartrate"
        case heartrateOptOut = "heartrate_opt_out"
        case displayHideHeartrateOption = "display_hide_heartrate_option"
        case elevHigh = "elev_high"
        case elevLow = "elev_low"
        case prCount = "pr_count"
        case totalPhotoCount = "total_photo_count"
        case hasKudoed = "has_kudoed"
        case activityDescription = "description"
        case calories
        case segmentEfforts = "segment_efforts"
//        case splitsMetric = "splits_metric"
//        case splitsStandard = "splits_standard"
//        case laps
//        case bestEfforts = "best_efforts"
//        case photos
        case deviceName = "device_name"
        case embedToken = "embed_token"
//        case similarActivities = "similar_activities"
//        case availableZones = "available_zones"
    }
}
