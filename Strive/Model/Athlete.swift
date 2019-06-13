//
//  Athlete.swift
//  Strive
//
//  Created by Uday Pandey on 03/06/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//

import Foundation

public struct Athlete: Codable {
    public let id: Int
    public let resourceState: ResourceState

    public let athleteType: Int?
    public let badgeTypeId: Int
    public let bikes: [Gear]?

    public let city: String
    public let country: String
    public let state: String

    public let clubs: [Club]?
    public let createdAt: Date
    public let datePreference: String?
    public let firstname: String
    public let follower: [Athlete]?
    public let followerCount: Int?
    public let friend: [Athlete]?
    public let friendCount: Int?
    public let ftp: URL?
    public let lastname: String
    public let measurementPreference: MeasurementPreference?
    public let mutualFriendCount: Int?
    public let premium: Bool = false
    public let profile: URL
    public let profileMedium: URL
    public let sex: String
    public let shoes: [Gear]?
    public let summit: Bool
    public let updatedAt: Date
    public let username: String
    public let weight: Double?

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
