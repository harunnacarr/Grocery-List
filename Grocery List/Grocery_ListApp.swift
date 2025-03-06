//
//  Grocery_ListApp.swift
//  Grocery List
//
//  Created by Harun Naçar on 5.03.2025.
//

import SwiftUI
import SwiftData

@main
struct Grocery_ListApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: Item.self)
        }
    }
}
