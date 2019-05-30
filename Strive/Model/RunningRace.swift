//
//  RunningRace.swift
//  Strive
//
//  Created by Uday Pandey on 03/06/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//

import Foundation

enum MeasurementPreference: Int, Codable {
    case meters
    case feet
}

public struct RunningRace: Codable {
    let id: Int
    let resourceState: Int
    let status: Int

    let name: String

    var city: String
    let state: String
    let country: String

    let distance: Double

    let runningRaceType: RaceType = .road
//    let startDateLocal: Date
    let measurementPreference: MeasurementPreference = .meters

    let url: String
    let websiteURL: String

    let routeIds: [Int]?

    enum RaceType: Int, Codable {
        case road
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
//        case startDateLocal = "start_date_local"
        case measurementPreference = "measurement_preference"

        case url
        case websiteURL = "website_url"

        case routeIds = "route_ids"
    }
}

/*

 {
 },
 {
 "city": "São Paulo",
 "country": "Brazil",
 "distance": 15000.0,
 "id": 3107,
 "measurement_preference": "meters",
 "name": "São Silvestre",
 "resource_state": 2,
 "running_race_type": 0,
 "start_date_local": "2019-12-31T08:00:00Z",
 "state": "São Paulo",
 "url": ""
 }


 {
 "city": "Dallas",
 "country": "United States",
 "distance": 42195.0,
 "id": 104,
 "measurement_preference": null,
 "name": "Dallas Marathon",
 "resource_state": 3,
 "route_ids": [
 1081811
 ],
 "running_race_type": 0,
 "start_date_local": "2014-12-14T08:05:00Z",
 "state": "Texas",
 "status": 1,
 "url": "2014-dallas-marathon",
 "website_url": "https://www.dallasmarathon.com/"
 }



 */
