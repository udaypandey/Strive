//
//  LatLng.swift
//  Strive
//
//  Created by Uday Pandey on 11/06/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//

import Foundation

public struct LatLng: Codable {
    public let latitude: Double
    public let longitude: Double

    public init(from decoder: Decoder) throws {
        var container = try decoder.unkeyedContainer()
        latitude = try container.decode(Double.self)
        longitude = try container.decode(Double.self)
    }
}
