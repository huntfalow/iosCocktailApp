//
//  URL+Helpers.swift
//  cocktailApp
//
//  Created by Vincent on 24/08/2019.
//  Copyright © 2019 Vincent. All rights reserved.
//

import Foundation
extension URL {
        func withQueries(_ queries: [String: String]) -> URL? {
            var components = URLComponents(url: self,
                                           resolvingAgainstBaseURL: true)
            components?.queryItems = queries.map
                { URLQueryItem(name: $0.0, value: $0.1) }
            return components?.url
        }
    }
