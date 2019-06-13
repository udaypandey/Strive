//
//  SegmentLeaderboard.swift
//  Strive
//
//  Created by Uday Pandey on 13/06/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//

import Foundation

public struct SegmentLeaderboard: Codable {
    public let effortCount: Int
    public let entries: [SegmentLeaderboardEntry]
    public let entryCount: Int
    public let komType: KomType

    private enum CodingKeys: String, CodingKey {
        case effortCount = "effort_count"
        case entries
        case entryCount = "entry_count"
        case komType = "kom_type"
    }
}
