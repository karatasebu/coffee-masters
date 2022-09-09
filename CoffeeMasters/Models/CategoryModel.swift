//
//  CategoryModel.swift
//  CoffeeMasters
//
//  Created by Ebubekir Karatas on 8.09.2022.
//

import Foundation

struct CategoryModel: Decodable, Identifiable {
    var name: String
    var products: [ProductModel]
    var id: String {
        return self.name
    }
}
