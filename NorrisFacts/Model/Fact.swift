//
//  Fact.swift
//  NorrisFacts
//
//  Created by Amanda Tavares on 17/11/19.
//  Copyright © 2019 Amanda Tavares. All rights reserved.
//

import Foundation

struct Fact: Decodable {
    let id: Int
    let url: String?
    let value: String
    let categories: Categories?
    
    enum CodingKeys: String, CodingKey {
        case id
        case url
        case value
        case categories
    }
}
