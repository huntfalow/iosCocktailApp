//
//  CocktailInfo.swift
//  cocktailApp
//
//  Created by Vincent on 24/08/2019.
//  Copyright © 2019 Vincent. All rights reserved.
//

import Foundation

struct CocktailItem: Decodable{
    let title: String
    let instructions: String
    let url: String

    enum CodingKeys: String, CodingKey {
        case title = "strDrink"
        case instructions = "strInstructions"
        case url = "strDrinkThumb"
       
    }
    init(from decoder: Decoder) throws {
        let valueContainer = try decoder.container(keyedBy:
            CodingKeys.self)
        self.title = try valueContainer.decode(String.self,
                                               forKey: CodingKeys.title)
        self.instructions = try
            valueContainer.decode(String.self, forKey:
                CodingKeys.instructions)
        self.url = try
            valueContainer.decode(String.self, forKey:
                CodingKeys.url)
    }
}


