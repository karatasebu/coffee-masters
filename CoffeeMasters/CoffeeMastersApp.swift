//
//  CoffeeMastersApp.swift
//  CoffeeMasters
//
//  Created by Ebubekir Karatas on 7.09.2022.
//

import SwiftUI

@main
struct CoffeeMastersApp: App {
    
    var menuManager = MenuManager()
    var orderManager = OrderManager()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(menuManager)
                .environmentObject(orderManager)
        }
    }
}
