//
//  StriveModel.swift
//  Strive
//
//  Created by Uday Pandey on 03/06/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//

import Foundation

struct UploadActivity: Codable {
}

struct ManualActivity: Codable {
}

struct UpdatableActivity: Codable {
}

struct SegmentLeaderboardQuery {
    let gender: Int
    let ageGroup: Int
    let weightClass: Int
    let following: Bool
    let clubId: String
    let dateRange: Int
}

struct ActivityStats {
}

struct ActivityTotal {
}

struct ActivityZone {
}

struct Comment {
}

struct Error {
}

struct ExplorerResponse {
}

struct ExplorerSegment {
}

struct Fault {
}

struct Lap {
}

struct LatLng {
}

struct PhotosSummary {
}

struct PhotosSummaryPrimary {
}

struct PolylineMap {
}

struct RouteDirection {
}

struct SegmentLeaderboard {
}

struct SegmentLeaderboardEntry {
}

struct Split {
}

struct StreamSet {
}

struct TimedZoneDistribution {
}

struct ZoneRange {
}
struct ZoneRanges {
}
struct Zones {
}
struct PowerZoneRanges {
}
struct TimedZoneRange {
}
struct HeartRateZoneRanges {
}

struct BaseStream {
}
struct AltitudeStream {
}
struct CadenceStream {
}
struct DistanceStream {
}
struct HeartrateStream {
}
struct LatLngStream {
}
struct MovingStream {
}
struct PowerStream {
}
struct SmoothGradeStream {
}
struct SmoothVelocityStream {
}
struct TemperatureStream {
}
struct TimeStream {
}
