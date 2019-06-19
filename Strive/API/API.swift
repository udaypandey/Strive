//
//  StriveAPIType.swift
//  Strive
//
//  Created by Uday Pandey on 30/05/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//
import Foundation

enum API {
    // MARK: - Activity
    case createManualActivity(activity: ManualActivity)
    case athleteActivities(before: Date, after: Date, page: Int, pageSize: Int)
    case activity(activityId: String)
    case updateActivity(activityId: String, activity: UpdatableActivity)
    case activityComments(activityId: String, page: Int, pageSize: Int)
    case activityKudos(activityId: String, page: Int, pageSize: Int)
    case activityLaps(activityId: String)
    case activityZones(activityId: String)

    // MARK: - Upload
    case createUpload(file: URL, upload: Upload)
    case getUpload(uploadId: String)

    // MARK: - Authenticated / Logged In Athlete
    case athlete
    case athleteZones
    case athleteClubs
    case updateAthlete(weight: Double)

    case athleteStats(atheleteId: String, page: Int, pageSize: Int)
    case athleteRoutes(atheleteId: String, page: Int, pageSize: Int)

    // MARK: - Club
    case club(clubId: String)
    case clubMembers(clubId: String, page: Int, pageSize: Int)
    case clubAdmins(clubId: String, page: Int, pageSize: Int)
    case clubActivities(clubId: String, page: Int, pageSize: Int)

    // MARK: - Gear
    case gear(gearId: String)

    // MARK: - Route
    case routes(routeId: String)
    case exportRouteAsGPX(routeId: String)
    case exportRouteAsTCX(routeId: String)

    // MARK: - Race
    case races(year: Int)
    case race(raceId: String)

    // MARK: - Segment Effort - Authenticated
    case segmentEfforts(segmentId: String, page: Int, pageSize: Int)
    case segmentEffort(segmentEffortId: String)

    // MARK: - Segment
    case segment(segmentId: String)
    case starredSegments(page: Int, pageSize: Int)
    case starSegment(segmentId: String, starred: Bool)
    case segmentLeaderBoard(segmentId: String, query: SegmentLeaderboardQuery, page: Int, pageSize: Int)
    case segments(latitude: Double, longitude: Double, activityType: ActivityType, minClimb: Int, maxClimb: Int)

    // MARK: - Streams
    case activityStreams(activityId: String, keys: Int, notCompleteTODO: Int)
    case routeStreams(routeId: String)
    case segmentEffortStreams(segmentEffortId: String, keys: Int, notCompleteTODO: Int)
    case segmentStreams(segmentId: String, keys: Int, notCompleteTODO: Int)
}
