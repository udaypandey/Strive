//
//  Gear.swift
//  Strive
//
//  Created by Uday Pandey on 03/06/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//

import Foundation

public struct Gear: Codable {
    public let id: String
    public let resourceState: ResourceState
    public let name: String

    public let brandName: String?
    public let description: String?
    public let distance: Double
    public let modelName: String?
    public let primary: Bool

    private enum CodingKeys: String, CodingKey {
        case id
        case name
        case distance
        case resourceState = "resource_state"
        case brandName = "brand_name"
        case description = "description"
        case modelName = "model_name"
        case primary
    }
}
