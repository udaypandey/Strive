//
//  PolylineMap.swift
//  Strive
//
//  Created by Uday Pandey on 11/06/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//

import Foundation

public struct PolylineMap: Codable {
    public let id: String
    public let resourceState: ResourceState

    public let summaryPolyline: String?
    public let polyline: String?

    private enum CodingKeys: String, CodingKey {
        case id
        case resourceState = "resource_state"
        case polyline
        case summaryPolyline = "summary_polyline"
    }
}
