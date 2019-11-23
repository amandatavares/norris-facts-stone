//
//  NetworkService.swift
//  NorrisFacts
//
//  Created by Amanda Tavares on 17/11/19.
//  Copyright © 2019 Amanda Tavares. All rights reserved.
//

import Foundation
class NetworkService {
    
    public static let shared = NetworkService()
    private init() {}
    private let urlSession = URLSession.shared
    private let baseURL = URL(string: "https://api.chucknorris.io/jokes/random")
    private let categoriesURL = URL(string: "https://api.chucknorris.io/jokes/categories")

//    // Enum Endpoint
//    enum Endpoint: String, CustomStringConvertible, CaseIterable {
//        case category
//        case search
//    }
    
    public enum APIServiceError: Error {
        case apiError
        case invalidEndpoint
        case invalidResponse
        case noData
        case decodeError
    }
    
}
