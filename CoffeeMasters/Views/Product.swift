//
//  Product.swift
//  CoffeeMasters
//
//  Created by Ebubekir Karatas on 8.09.2022.
//

import SwiftUI

struct Product: View {
    
    var product: ProductModel
    
    var body: some View {
            VStack{
                AsyncImage(url: product.imageURL)
                    .frame(width: 300, height: 150)
                    .background(Color("AccentColor"))
                HStack {
                    VStack(alignment: .leading) {
                        Text(product.name)
                            .font(.title3)
                            .bold()
                        Text("$ \(product.price, specifier: "%.2f")")
                            .font(.caption)

                    }.padding(8)
                    Spacer()
                }
            }
            .background(Color("SurfaceBackground"))
            .cornerRadius(10)
            .padding(.trailing)
        }
}

struct Product_Previews: PreviewProvider {
    static var previews: some View {
        Product(product: ProductModel(id: 1, name: "Dummy Product", description: "", price: 1.25, image: ""))
    }
}
