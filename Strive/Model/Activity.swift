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

    public let resourceState: ResourceState
    //    let athlete: Athlete?
    public let name: String
    public let distance: Double
    public let movingTime: Double
    public let elapsedTime: Double
    public let totalElevationGain: Double
    public let type: String
    public let workoutType: Int
    public let id: Int
    public let externalId: String
    public let uploadId: Int?
    public let startDate: Date
    public let startDateLocal: Date
    public let timezone: String
    public let utcOffset: Int
    public let startLatlng: LatLng
    public let endLatlng: LatLng
    public let locationCity: String?
    public let locationState: String?
    public let locationCountry: String?
    public let startLatitude: Double
    public let startLongitude: Double
    public let achievementCount: Int
    public let kudosCount: Int
    public let commentCount: Int
    public let athleteCount: Int
    public let photoCount: Int
    public let map: PolylineMap?
    public let trainer: Bool
    public let commute: Bool
    public let manual: Bool
    public let isPrivate: Bool
    public let visibility: Visibility
    public let flagged: Bool
    public let gearId: Gear?
    public let fromAcceptedTag: Bool
    public let averageSpeed: Double
    public let maxSpeed: Double
    public let hasHeartrate: Bool
    public let averageHeartrate: Double
    public let maxHeartrate: Double
    public let heartrateOptOut: Bool
    public let displayHideHeartrateOption: Bool
    public let elevHigh: Double
    public let elevLow: Double
    public let prCount: Int
    public let totalPhotoCount: Int
    public let hasKudoed: Bool
    public let activityDescription: String?
    public let calories: Double?
    public let segmentEfforts: [SegmentEffort]?
    public let splitsMetric: [Split]?
    public let splitsStandard: [Split]?
    //    let laps: [Lap]
    //    let bestEfforts: [String]?
    //    let photos: URL?
    public let deviceName: String?
    public let embedToken: String?
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
        case startLatlng = "start_latlng"
        case endLatlng = "end_latlng"
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
        case map
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
        case splitsMetric = "splits_metric"
        case splitsStandard = "splits_standard"
        //        case laps
        //        case bestEfforts = "best_efforts"
        //        case photos
        case deviceName = "device_name"
        case embedToken = "embed_token"
        //        case similarActivities = "similar_activities"
        //        case availableZones = "available_zones"
    }
}
