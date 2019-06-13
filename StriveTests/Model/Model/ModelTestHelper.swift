//
//  ModelHelper.swift
//  StriveTests
//
//  Created by Uday Pandey on 04/06/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//

import XCTest

extension XCTestCase {
    func loadJson(from fileName: String) -> Data? {
        let bundle = Bundle(for: type(of: self))

        guard let url = bundle.url(forResource: fileName, withExtension: "json"),
            let data = try? Data(contentsOf: url) else {
                return nil
        }

        return data
    }

    func model<T: Decodable>(from fileName: String) -> T? {
        guard let json = loadJson(from: fileName) else {
            return nil
        }

        let jsonDecoder = JSONDecoder()
        jsonDecoder.dateDecodingStrategy = .iso8601
//        jsonDecoder.keyDecodingStrategy = .convertFromSnakeCase

        do {
            return try jsonDecoder.decode(T.self, from: json)
        } catch {
            print("Json Decode Error: ", error)
        }

        return nil
    }
}
