//
//  UploadPayload.swift
//  Strive
//
//  Created by Uday Pandey on 19/06/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//

import Foundation

public enum PayloadType: String, Codable {
    case fit
    case fitgz = "fit.gz"
    case tcx
    case tcxgz = "tcx.gz"
    case gpx
    case gpxgz = "gpx.gz"
}

// Used while uploading a new activity
public struct UploadPayload: Codable {
    public let file: String
    public let name: String
    public let uploadDescription: String
    public let trainer: Bool
    public let commute: Bool
    public let dataType: PayloadType
    public let externalId: String?

    private enum CodingKeys: String, CodingKey {
        case file
        case name
        case uploadDescription = "description"
        case trainer
        case commute
        case dataType = "data_type"
        case externalId = "external_id"
    }
}
