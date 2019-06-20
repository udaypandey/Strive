//
//  PhotoSummary.swift
//  Strive
//
//  Created by Uday Pandey on 20/06/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//

import Foundation

public struct PhotoSummary: Codable {
    public let count: Int
    public let primary: PhotoSummaryPrimary?
    public let usePrimaryPhoto: Bool = false

    private enum CodingKeys: String, CodingKey {
        case count
        case primary
        case usePrimaryPhoto = "use_primary_photo"
    }
}
