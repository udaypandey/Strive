//
//  Activity.swift
//  Strive
//
//  Created by Uday Pandey on 03/06/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//

import Foundation

public struct Activity {
//    public let `map`: Map?
//    public let isPrivate: Bool?
//    public let achievementCount: Int
//    public let activityId: Int
//    public let athlete Athlete
//    public let athleteCount: Int
//    public let athleteId: Int
//    public let athleteResourceState: Int
//    public let averageCadence Double?
//    public let averageHeartRate Double?
//    public let averageSpeed Speed?
//    public let averageSpeed: Float
//    public let averageSpeed: Speed?
//    public let averageTemperature Temperature?
//    public let averageWatts Double?
//    public let averageWatts: Float?
//    public let bestEfforts EquatableArray<SegmentEffort>?
//    public let bestEfforts: [Split]?
//    public let calories Double?
//    public let calories: Double?
//    public let city: String
//    public let commentCount: Int
//    public let commute: Bool
//    public let country: String
//    public let description String?
//    public let description: String?
//    public let deviceName String?
//    public let deviceWatts: Bool
//    public let distance Distance?
//    public let distance: Double?
//    public let distance: Float
//    public let elapsedTime Time?
//    public let elapsedTime: Int
//    public let elapsedTime: TimeInterval?
//    public let elevationHigh Distance?
//    public let elevationHigh: Float
//    public let elevationLow Distance?
//    public let elevationLow: Float
//    public let embedToken String?
//    public let endCoordinates Coordinates?
//    public let endCoordinates: [CLLocationDegrees]
//    public let endLatLng: Location?
//    public let externalID String?
//    public let externalId: String
//    public let externalId: String?
//    public let flagged: Bool
//    public let gear Gear?
//    public let gear: Gear?
//    public let gearID String?
//    public let gearId: Int?
//    public let hasDeviceWatts Bool?
//    public let hasHeartRate Bool?
//    public let hasHeartrate: Bool
//    public let hasKudoed Bool?
//    public let hasKudoed: Bool
//    public let hasKudoed: Bool?
//    public let hasTrainer Bool?
//    public let id Int
//    public let id: Int?
//    public let isCommute Bool?
//    public let isFlagged Bool?
//    public let isManual Bool?
//    public let isPrivate Bool?
//    public let kilojoules Double?
//    public let kilojoules: Float?
//    public let kudosCount Int?
//    public let kudosCount: Count?
//    public let kudosCount: Int
//    public let manual: Bool
//    public let manual: Bool?
//    public let map Map?
//    public let map: Map
//    public let maxHeartRate Int?
//    public let maxSpeed Speed?
//    public let maxSpeed: Float
//    public let maxSpeed: Speed?
//    public let maxWatts Double?
//    public let movingTime Time?
//    public let movingTime: Int
//    public let movingTime: TimeInterval?
//    public let name String?
//    public let name: String
//    public let name: String?
//    public let photoCount Int?
//    public let photoCount: Count?
//    public let photoCount: Int
//    public let photos PhotoSummary?
//    public let photos: [Photo]?
//    public let privateActivity: Bool
//    public let resourceState ResourceState
//    public let resourceState: ResourceState?
//    public let segmentEfforts EquatableArray<SegmentEffort>?
//    public let segmentEfforts: [Effort]?
//    public let splitsMetric EquatableArray<Split>?
//    public let splitsMetric: [Split]?
//    public let splitsStandard EquatableArray<Split>?
//    public let splitsStandard: [Split]?
//    public let startCoordinates Coordinates?
//    public let startCoordinates: [CLLocationDegrees]
//    public let startDate Date?
//    public let startDate: Date?
//    public let startDateLocal Date?
//    public let startDateLocal: Date?
//    public let startDateLocalString: String
//    public let startDateString: String
//    public let startLatLng: Location?
//    public let state: String
//    public let sufferScore Int?
//    public let timeZone: String?
//    public let timezone String?
//    public let timezone: String
//    public let totalElevationGain Distance?
//    public let totalElevationGain: Double?
//    public let totalElevationGain: Float
//    public let totalPhotoCount Int?
//    public let totalPhotoCount: Count?
//    public let totalPhotoCount: Int
//    public let trainer: Bool
//    public let trainer: Bool?
//    public let type ActivityType?
//    public let type: ActivityType?
//    public let type: String
//    public let uploadID Int?
//    public let uploadId: Int
//    public let uploadId: Int?
//    public let weightedAverageWatts Double?
//    public let weightedAverageWatts: Float?
//    public let workoutType WorkoutType?
//    public let workoutType: Int?
//    public let workoutType: WorkoutType?
//    public typealias Count = Int
//    public typealias Speed = Double


//    /**
//     Initializer
//
//     - Parameter json: SwiftyJSON object
//     - Internal
//     **/
//    required public init(_ json: JSON) {
//
//        id = json["id"].int
//        resourceState = json["resource_state"].strive(ResourceState.self)
//        externalId = json["external_id"].string
//        uploadId = json["upload_id"].int
//        athlete = json["athlete"].strive(Athlete.self)
//        name = json["name"].string
//        description = json["description"].string
//        distance = json["distance"].double
//        movingTime = json["moving_time"].double
//        elapsedTime = json["elapsed_time"].double
//        totalElevationGain = json["total_elevation_gain"].double
//        type = json["type"].strive(ActivityType.self)
//        startDate = json["start_date"].string?.toDate()
//        startDateLocal = json["start_date_local"].string?.toDate()
//        startLatLng = json["start_latlng"].strive(Location.self)
//        endLatLng = json["end_latlng"].strive(Location.self)
//        achievementCount = json["achievement_count"].int
//        kudosCount = json["kudos_count"].int
//        commentCount = json["comment_count"].int
//        athleteCount = json["athlete_count"].int
//        photoCount = json["php_count"].int
//        totalPhotoCount = json["total_photo_count"].int
//        photos = json["photos"].strive(Photo.self)
//        trainer = json["trainer"].bool
//        commute = json["commute"].bool
//        manual = json["manual"].bool
//        `private` = json["private"].bool
//        flagged = json["flagged"].bool
//        workoutType = json["workout_type"].strive(WorkoutType.self)
//        gear = json["gear"].strive(Gear.self)
//        averageSpeed = json["average_speed"].double
//        maxSpeed = json["max_speed"].double
//        calories = json["calories"].double
//        hasKudoed = json["has_kudoed"].bool
//        segmentEfforts = json["segment_efforts"].strive(Effort.self)
//        splitsMetric = json["splits_metric"].strive(Split.self)
//        splitsStandard = json["splits_standard"].strive(Split.self)
//        bestEfforts = json["best_efforts"].strive(Split.self)
//        map = json["map"].strive(Map.self)
//        timeZone = json["timezone"].string
//    }
//    init?(dictionary: JSONDictionary) {
//        if let s = JSONSupport(dictionary: dictionary),
//            let activityId: Int = s.value("id"),
//            let externalId: String = s.value("external_id"),
//            let uploadId: Int = s.value("upload_id"),
//            let athleteDictionary: JSONDictionary = s.value("athlete"),
//            let a = JSONSupport(dictionary: athleteDictionary),
//            let athleteId: Int = a.value("id"),
//            let athleteResourceState: Int = a.value("resource_state"),
//            let name: String = s.value("name"),
//            let distance: Float = s.value("distance"),
//            let movingTime: Int = s.value("moving_time"),
//            let elapsedTime: Int = s.value("elapsed_time"),
//            let totalElevationGain: Float = s.value("total_elevation_gain"),
//            let type: String = s.value("type"),
//            let startDate: String = s.value("start_date"),
//            let startDateLocal: String = s.value("start_date_local"),
//            let timezone: String = s.value("timezone"),
//            let startCoordinates: [CLLocationDegrees] = s.value("start_latlng"),
//            startCoordinates.count == 2,
//            let endCoordinates: [CLLocationDegrees] = s.value("end_latlng"),
//            endCoordinates.count == 2,
//            let city: String = s.value("location_city"),
//            let state: String = s.value("location_state"),
//            let country: String = s.value("location_country"),
//            let achievementCount: Int = s.value("achievement_count"),
//            let kudosCount: Int = s.value("kudos_count"),
//            let commentCount: Int = s.value("comment_count"),
//            let athleteCount: Int = s.value("athlete_count"),
//            let photoCount: Int = s.value("photo_count"),
//            let mapDictionary: JSONDictionary = s.value("map"),
//            let map = Map(dictionary: mapDictionary),
//            let trainer: Bool = s.value("trainer"),
//            let commute: Bool = s.value("commute"),
//            let manual: Bool = s.value("manual"),
//            let privateActivity: Bool = s.value("private"),
//            let flagged: Bool = s.value("flagged"),
//            let averageSpeed: Float = s.value("average_speed"),
//            let maxSpeed: Float = s.value("max_speed"),
//            let deviceWatts: Bool = s.value("device_watts"),
//            let hasHeartrate: Bool = s.value("has_heartrate"),
//            let elevationHigh: Float = s.value("elev_high"),
//            let elevationLow: Float = s.value("elev_low"),
//            let totalPhotoCount: Int = s.value("total_photo_count"),
//            let hasKudoed: Bool = s.value("has_kudoed") {
//            self.activityId = activityId
//            self.externalId = externalId
//            self.uploadId = uploadId
//            self.athleteId = athleteId
//            self.athleteResourceState = athleteResourceState
//            self.name = name
//            self.distance = distance
//            self.movingTime = movingTime
//            self.elapsedTime = elapsedTime
//            self.totalElevationGain = totalElevationGain
//            self.type = type
//            self.startDateString = startDate
//            self.startDateLocalString = startDateLocal
//            self.timezone = timezone
//            self.startCoordinates = startCoordinates
//            self.endCoordinates = endCoordinates
//            self.city = city
//            self.state = state
//            self.country = country
//            self.achievementCount = achievementCount
//            self.kudosCount = kudosCount
//            self.commentCount = commentCount
//            self.athleteCount = athleteCount
//            self.photoCount = photoCount
//            self.map = map
//            self.trainer = trainer
//            self.commute = commute
//            self.manual = manual
//            self.privateActivity = privateActivity
//            self.flagged = flagged
//            self.averageSpeed = averageSpeed
//            self.maxSpeed = maxSpeed
//            self.deviceWatts = deviceWatts
//            self.hasHeartrate = hasHeartrate
//            self.elevationHigh = elevationHigh
//            self.elevationLow = elevationLow
//            self.totalPhotoCount = totalPhotoCount
//            self.hasKudoed = hasKudoed
//
//            // Optional Properties
//
//            self.gearId = s.value("gear_id", required: false)
//            self.averageWatts = s.value("average_watts", required: false)
//            self.weightedAverageWatts = s.value("weighted_average_watts", required: false)
//            self.kilojoules = s.value("kilojoules", required: false)
//            self.workoutType = s.value("workout_type", required: false)
//        }
//        else {
//            return nil
//        }
//    }

//    public static func activities(_ dictionaries: [JSONDictionary]) -> [Activity]? {
//        let activities = dictionaries.flatMap { (d) in
//            return Activity(dictionary: d)
//        }
//
//        return activities.count > 0 ? activities nil
//    }
//
//    public var startCoordinate: CLLocationCoordinate2D {
//        guard let latitude = startCoordinates.first,
//            let longitude = startCoordinates.last
//            else {
//                return kCLLocationCoordinate2DInvalid
//        }
//        return CLLocationCoordinate2DMake(latitude, longitude)
//    }
//
//    public var endCoordinate: CLLocationCoordinate2D {
//        guard let latitude = endCoordinates.first,
//            let longitude = endCoordinates.last
//            else {
//                return kCLLocationCoordinate2DInvalid
//        }
//        return CLLocationCoordinate2DMake(latitude, longitude)
//    }
//
//    public var startDate: Date? {
//        return Strive.dateFromString(startDateString)
//    }
//
//    public var startDateLocal: Date? {
//        return Strive.dateFromString(startDateLocalString)
//    }
}

public struct SummaryActivity {
}

public struct DetailedActivity {
}

public struct MetaActivity {
}
