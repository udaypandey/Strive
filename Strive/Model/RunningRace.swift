//
//  RunningRace.swift
//  Strive
//
//  Created by Uday Pandey on 03/06/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//

import Foundation

public struct RunningRace: Codable {
    public let id: Int
    public let resourceState: ResourceState
    public let status: Int?

    public let name: String

    var city: String
    public let state: String
    public let country: String

    public let distance: Double

    public let runningRaceType: RunningRaceType = .road
    public let startDateLocal: Date?
    public let measurementPreference: MeasurementPreference = .meters

    public let url: String?
    public let websiteURL: String?

    public let routeIds: [Int]?

    public enum RunningRaceType: Int, Codable {
        case road = 0
        case trail
        case track
        case xc
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case resourceState = "resource_state"
        case status

        case name

        case city
        case state
        case country

        case distance

        case runningRaceType = "running_race_type"
        case startDateLocal = "start_date_local"
        case measurementPreference = "measurement_preference"

        case url
        case websiteURL = "website_url"

        case routeIds = "route_ids"
    }
}
