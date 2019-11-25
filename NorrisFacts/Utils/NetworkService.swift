//
//  NetworkService.swift
//  NorrisFacts
//
//  Created by Amanda Tavares on 17/11/19.
//  Copyright © 2019 Amanda Tavares. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

class NetworkService {
    
    public static let shared = NetworkService()
    private let urlSession = URLSession.shared
    private let baseURL = URL(string: "https://api.chucknorris.io/jokes/random")
    private let categoriesURL = URL(string: "https://api.chucknorris.io/jokes/categories")
    private let queryURL = URL(string: "https://api.chucknorris.io/jokes/search?query=")
    
    let facts: BehaviorRelay<[Fact]> = BehaviorRelay(value: [])
    let disposeBag = DisposeBag()

    private init() {
        // instead of create array, use BehaviorRelay to get updates and subscribe
    }
    
    public enum APIServiceError: Error {
        case apiError
        case invalidEndpoint
        case invalidResponse
        case noData
        case decodeError
    }
    
//    // Enum Endpoint
//    enum Endpoint: String, CustomStringConvertible, CaseIterable {
//        case category
//        case search
//    }
    
    func fetchData() {
       if let url = baseURL {
          URLSession.shared.dataTask(with: url) { data, _, error in
            if let data = data {
               do {
                 let facts = try JSONDecoder().decode([Fact].self, from: data)
                 self.facts.accept(facts)
               } catch let error {
                 print(error)
               }
            }
          }.resume()
       }
    }
    
}
