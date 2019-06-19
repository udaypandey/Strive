//
//  TemperatureStream.swift
//  Strive
//
//  Created by Uday Pandey on 20/06/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//

import Foundation

public struct TemperatureStream: Codable {
    public let data: [Int]
    public let originalSize: Int
    public let resolution: StreamResolutionType
    public let seriesType: StreamSeriesType

    private enum CodingKeys: String, CodingKey {
        case data
        case originalSize = "original_size"
        case resolution
        case seriesType = "series_type"
    }
}
