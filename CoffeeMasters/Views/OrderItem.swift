//
//  OrderItem.swift
//  CoffeeMasters
//
//  Created by Ebubekir Karatas on 8.09.2022.
//

import SwiftUI

struct OrderItem: View {
    
    var item: (ProductModel, Int)
    @EnvironmentObject var orderManager: OrderManager
    
    var body: some View {
        HStack {
            Text("\(item.1)x")
            Text(item.0.name)
            Spacer()
            Text("$ \(Double(item.1) * item.0.price, specifier: "%.2f")")
            Image(systemName: "trash")
                .padding()
                .foregroundColor(Color(.red))
                .onTapGesture {
                    orderManager.remove(product: item.0)
                }
        }
    }
}

struct OrderItem_Previews: PreviewProvider {
    static var previews: some View {
        OrderItem(item: (ProductModel(id: 1, name: "Bla", description: "", price: 1.11, image: ""), 2)
        )
    }
}
