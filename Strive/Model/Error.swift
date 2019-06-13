//
//  Error.swift
//  Strive
//
//  Created by Uday Pandey on 11/06/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//

import Foundation

public struct StriveError: Error, Codable {
    public let code: String
    public let field: String
    public let resource: String
}

public struct Fault: Codable {
    public let errors: [StriveError]
    public let message: String
}
