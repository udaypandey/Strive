//
//  Route.swift
//  Strive
//
//  Created by Uday Pandey on 03/06/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//
import Foundation

public struct Route: Codable {
//    public let athlete: Athlete?
    public let createdAt: Date
    public let routeDescription: String
    public let distance: Double
    public let elevationGain: Double
    public let estimatedMovingTime: Int
    public let id: Int
    public let map: PolylineMap?
    public let name: String
    public let isPrivate: Bool
    public let resourceState: ResourceState
    public let segments: [Segment]?
    public let starred: Bool
    public let subType: Int
    public let timestamp: Int
    public let type: Int
    public let updatedAt: Date

    private enum CodingKeys: String, CodingKey {
//        case athlete
        case createdAt = "created_at"
        case routeDescription = "description"
        case distance
        case elevationGain = "elevation_gain"
        case estimatedMovingTime = "estimated_moving_time"
        case id
        case map
        case name
        case isPrivate = "private"
        case resourceState = "resource_state"
        case segments
        case starred
        case subType = "sub_type"
        case timestamp
        case type
        case updatedAt = "updated_at"
    }
}
