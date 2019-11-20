//
//  Categories.swift
//  NorrisFacts
//
//  Created by Amanda Tavares on 17/11/19.
//  Copyright © 2019 Amanda Tavares. All rights reserved.
//

import Foundation

struct Categories: Decodable {
    let categories: [String]
    init(from decoder: Decoder) throws {
        var container = try decoder.unkeyedContainer()
        categories = try container.decode([String].self)
    }
}
