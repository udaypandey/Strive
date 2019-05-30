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

    public let admin: Bool
    public let city: String
    public let clubType: ClubType
    public let country: String
    public let coverPhoto: URL?
    public let coverPhotoSmall: URL?
    public let clubDescription: String
    public let featured: Bool
    public let followingCount: Int
    public let id: Int
    public let memberCount: Int
    public let membership: Membership
    public let name: String
    public let owner: Bool
    public let isPrivate: Bool
    public let profile: URL
    public let profileMedium: URL
    public let resourceState: Int
    public let sportType: SportType
    public let state: String

    // TODO: Empty string URL throws a parse error in Codable
    public let url: URL?
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

struct DetailedClub {
}

struct SummaryClub {
}

struct MetaClub {
}

/*

 {
 "city": "Stanmore",
 "country": "United Kingdom",
 "cover_photo": null,
 "cover_photo_small": null,
 "featured": false,
 "id": 239801,
 "member_count": 54,
 "name": "Stanmore-Active (Running)",
 "private": true,
 "profile": "https://dgalywyr863hv.cloudfront.net/pictures/clubs/239801/5273591/1/large.jpg",
 "profile_medium": "https://dgalywyr863hv.cloudfront.net/pictures/clubs/239801/5273591/1/medium.jpg",
 "resource_state": 2,
 "sport_type": "running",
 "state": "England",
 "url": "",
 "verified": false
 }

 {
 "admin": false,
 "city": "Stanmore",
 "club_type": "casual_club",
 "country": "United Kingdom",
 "cover_photo": null,
 "cover_photo_small": null,
 "description": "Running group tailored for new, half and full marathon runners.",
 "featured": false,
 "following_count": 23,
 "id": 239801,
 "member_count": 54,
 "membership": "member",
 "name": "Stanmore-Active (Running)",
 "owner": false,
 "private": true,
 "profile": "https://dgalywyr863hv.cloudfront.net/pictures/clubs/239801/5273591/1/large.jpg",
 "profile_medium": "https://dgalywyr863hv.cloudfront.net/pictures/clubs/239801/5273591/1/medium.jpg",
 "resource_state": 3,
 "sport_type": "running",
 "state": "England",
 "url": "",
 "verified": false
 }
 */
