//
//  PolylineMap.swift
//  Strive
//
//  Created by Uday Pandey on 11/06/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//

import Foundation

struct PolylineMap: Codable {
    let id: String
    let resourceState: ResourceState

    let summaryPolyline: String
    let polyline: String?

    private enum CodingKeys: String, CodingKey {
        case id
        case resourceState = "resource_state"
        case polyline
        case summaryPolyline = "summary_polyline"
    }
}
