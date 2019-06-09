//
//  RunningRace.swift
//  Strive
//
//  Created by Uday Pandey on 03/06/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//

import Foundation

public struct RunningRace: Codable {
    let id: Int
    let resourceState: ResourceState
    let status: Int?

    let name: String

    var city: String
    let state: String
    let country: String

    let distance: Double

    let runningRaceType: RunningRaceType = .road
    let startDateLocal: Date?
    let measurementPreference: MeasurementPreference = .meters

    let url: String?
    let websiteURL: String?

    let routeIds: [Int]?

    enum RunningRaceType: Int, Codable {
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
