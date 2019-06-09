//
//  Error.swift
//  Strive
//
//  Created by Uday Pandey on 11/06/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//

import Foundation

struct StriveError: Error, Codable {
    let code: String
    let field: String
    let resource: String
}

struct Fault: Codable {
    let errors: [StriveError]
    let message: String
}
