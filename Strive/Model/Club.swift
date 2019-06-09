//
//  Club.swift
//  Strive
//
//  Created by Uday Pandey on 03/06/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//

import Foundation

public struct Club: Codable {
    public enum Membership: String, Codable {
        case member
        case pending
        case notAMember = "null"
    }

    public enum ClubType: String, Codable {
        case casual     = "casual_club"
        case racingTeam = "racing_team"
        case shop
        case company
        case other
    }

    public enum SportType: String, Codable {
        case cycling
        case running
        case triathlon
        case other
    }

    public let id: Int
    public let name: String
    public let resourceState: ResourceState

    public let admin: Bool = false

    public let city: String
    public let state: String
    public let country: String

    public let clubType: ClubType?

    public let coverPhoto: URL?
    public let coverPhotoSmall: URL?

    public let clubDescription: String?
    public let featured: Bool
    public let followingCount: Int?
    public let memberCount: Int
    public let membership: Membership?
    public let owner: Bool = false
    public let isPrivate: Bool

    public let profile: URL?
    public let profileMedium: URL?
    public let sportType: SportType

    public let url: String?
    public let isVerified: Bool

    private enum CodingKeys: String, CodingKey {
        case admin
        case city
        case clubType = "club_type"
        case country
        case coverPhoto = "cover_photo"
        case coverPhotoSmall = "cover_photo_small"
        case clubDescription = "description"
        case featured
        case followingCount = "following_count"
        case id
        case memberCount = "member_count"
        case membership
        case name
        case owner
        case isPrivate = "private"
        case profile
        case profileMedium = "profile_medium"
        case resourceState = "resource_state"
        case sportType = "sport_type"
        case state
        case url
        case isVerified = "verified"
    }
}
