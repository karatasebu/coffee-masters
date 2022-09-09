//
//  OrderManager.swift
//  CoffeeMasters
//
//  Created by Ebubekir Karatas on 8.09.2022.
//

import Foundation

class OrderManager: ObservableObject {
    @Published var orders: [(ProductModel, Int)] = []
    
    func add(product: ProductModel, quantity: Int) {
        self.orders.append((product, quantity))
    }
    
    func remove(product: ProductModel) {
        self.orders.removeAll { item in
            return item.0.id == product.id
        }
    }
    
    func total() -> Double {
       var total = 0.0
       for item in orders {
           total += item.0.price * Double(item.1)
       }
       return total
   }
}
