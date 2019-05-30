//
//  StriveAPI+Moya.swift
//  Strive
//
//  Created by Uday Pandey on 03/06/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//

import Foundation
import Moya

extension API: TargetType {
    var baseURL: URL {
        return URL(string: "https://www.strive.com/api/v3/")!
    }

    var path: String {
        switch self {
        case .createManualActivity:
            return "/activities"

        case .athleteActivities:
            return "/athelete/activities"

        case .activity(let activityId):
            return "/activities/\(activityId)"

        case let .updateActivity(activityId, _):
            return "/activities/\(activityId)"

        case let .activityComments(activityId, _, _):
            return "/activities/\(activityId)/comments"

        case let .activityKudos(activityId, _, _):
            return "/activities/\(activityId)/kudos"

        case .activityLaps(let activityId):
            return "/activities/\(activityId)/laps"

        case .activityZones(let activityId):
            return "/activities/\(activityId)/zones"

        case .createUpload:
            return "/uploads"

        case .getUpload(let uploadId):
            return "/uploads/\(uploadId)"

        case .athlete:
            return "/athlete"

        case .athleteZones:
            return "/athlete/zones"

        case .athleteClubs:
            return "/athlete/clubs"

        case .updateAthlete:
            return "/athlete"

        case let .athleteStats(atheleteId, _, _):
            return "/atheletes/\(atheleteId)/stats"

        case let .athleteRoutes(atheleteId, _, _):
            return "/atheletes/\(atheleteId)/routes"

        case .club(let clubId):
            return "/clubs/\(clubId)"

        case let .clubMembers(clubId, _, _):
            return "/clubs/\(clubId)/members"

        case let .clubAdmins(clubId, _, _):
            return "/clubs/\(clubId)/admins"

        case let .clubActivities(clubId, _, _):
            return "/clubs/\(clubId)/activities"

        case .gear(let gearId):
            return "/gears/\(gearId)"

        case .routes(let routeId):
            return "/routes/\(routeId)"

        case .exportRouteAsGPX(let routeId):
            return "/routes/\(routeId)/export_gpx"

        case .exportRouteAsTCX(let routeId):
            return "/routes/\(routeId)/export_tcx"

        case .races:
            return "/running_races"

        case .race(let raceId):
            return "/running_races/\(raceId)"

        case let .segmentEfforts(segmentId, _, _):
            return "/segments/\(segmentId)/all_efforts"

        case .segmentEffort(let segmentEffortId):
            return "/segment_efforts/\(segmentEffortId)"

        case .segment(let segmentId):
            return "/segments/\(segmentId)"

        case .starredSegments:
            return "/segments/starred"

        case .starSegment(let segmentId, _):
            return "/segments/\(segmentId)/starred"

        case let .segmentLeaderBoard(segmentId, _, _, _):
            return "/segments/\(segmentId)/leaderboard"

        case .segments:
            return "/segments/explore"

        case let .activityStreams(activityId, _, _):
            return "/activities/\(activityId)/streams"

        case .routeStreams(let routeId):
            return "/routes/\(routeId)/streams"

        case let .segmentEffortStreams(segmentEffortId, _, _):
            return "/segmentEfforts/\(segmentEffortId)/streams"

        case let .segmentStreams(segmentId, _, _):
            return "/segments/\(segmentId)/streams"
        }
    }

    var method: Moya.Method {
        switch self {
        case .createManualActivity,
             .createUpload:
            return .post

        case .updateActivity,
             .starSegment,
             .updateAthlete:
            return .put

        default:
            return .get
        }
    }

    var headers: [String: String]? {
        return nil
    }

    var parameters: [String: Any]? {
        switch self {
        case let .athleteActivities(before, after, page, pageSize):
            return [
                "before": before,
                "after": after,
                "page": page,
                "per_page": pageSize
            ]

        case let .activityComments(_, page, pageSize),
             let .athleteStats(_, page, pageSize),
             let .athleteRoutes(_, page, pageSize),
             let .clubMembers(_, page, pageSize),
             let .clubAdmins(_, page, pageSize),
             let .clubActivities(_, page, pageSize),
             let .segmentEfforts(_, page, pageSize),
             let .starredSegments(page, pageSize),
             let .segmentLeaderBoard(_, _, page, pageSize),
             let .activityKudos(_, page, pageSize):
            return [
                "page": page,
                "per_page": pageSize
            ]

        default:
            return nil
        }
    }

    var task: Task {
        switch self {
        case .createManualActivity(let activity):
            return .requestJSONEncodable(activity)

        case let .updateActivity(_, activity):
            return .requestJSONEncodable(activity)

        case let .createUpload(_, upload):
            return .requestJSONEncodable(upload)

        case .updateAthlete(let weight):
            return .requestJSONEncodable(weight)

        case let .starSegment(_, starred):
            return .requestJSONEncodable(starred)

        default:
            guard let params = parameters else {
                return .requestPlain
            }

            // Remove nil values if any
            let compactParams = params.compactMapValues { $0 }
            return .requestParameters(parameters: compactParams, encoding: URLEncoding.default)
        }
    }

    var validationType: ValidationType {
        return .successAndRedirectCodes
    }

    var sampleData: Data {
        return "".data(using: .utf8)!
    }
}
