//
//  MenuManager.swift
//  CoffeeMasters
//
//  Created by Ebubekir Karatas on 8.09.2022.
//

import Foundation
import Alamofire

class MenuManager: ObservableObject {
    @Published var menu: [CategoryModel] = []
    
    init() {
        fetchItems()
    }
    
    func fetchItems()  {
        AF.request("https://firtman.github.io/coffeemasters/api/menu.json")
            .responseDecodable(of: [CategoryModel].self) { response in
                if let menuFromNetwork = response.value {
                    self.menu = menuFromNetwork
                }
            }
    }
}
