//
//  ProductModel.swift
//  CoffeeMasters
//
//  Created by Ebubekir Karatas on 8.09.2022.
//

import Foundation

struct ProductModel: Decodable, Identifiable {
    var id: Int
    var name: String
    var description: String
    var price: Double
    var image: String
    
    var imageURL: URL {
        URL(string: "https://firtman.github.io/coffeemasters/api/images/\(self.image)")!
    }
}
