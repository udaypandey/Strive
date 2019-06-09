//
//  Athlete.swift
//  Strive
//
//  Created by Uday Pandey on 03/06/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//

import Foundation

public struct Athlete: Codable {
    let id: Int
    let resourceState: ResourceState

    let athleteType: Int?
    let badgeTypeId: Int
    let bikes: [Gear]?

    let city: String
    let country: String
    let state: String

    let clubs: [Club]?
    let createdAt: Date
    let datePreference: String?
    let firstname: String
    let follower: [Athlete]?
    let followerCount: Int?
    let friend: [Athlete]?
    let friendCount: Int?
    let ftp: URL?
    let lastname: String
    let measurementPreference: MeasurementPreference?
    let mutualFriendCount: Int?
    let premium: Bool = false
    let profile: URL
    let profileMedium: URL
    let sex: String
    let shoes: [Gear]?
    let summit: Bool
    let updatedAt: Date
    let username: String
    let weight: Double?

    private enum CodingKeys: String, CodingKey {
        case id
        case resourceState = "resource_state"

        case state
        case country
        case city

        case athleteType = "athlete_type"
        case badgeTypeId =  "badge_type_id"
        case bikes
        case clubs
        case createdAt = "created_at"
        case datePreference = "date_preference"
        case firstname
        case follower
        case followerCount = "follower_count"
        case friend
        case friendCount = "friend_count"
        case ftp
        case lastname
        case measurementPreference = "measurement_preference"
        case mutualFriendCount = "mutual_friend_count"
        case premium
        case profile
        case profileMedium = "profile_medium"
        case sex
        case shoes
        case summit
        case updatedAt = "updated_at"
        case username
        case weight
    }
}
