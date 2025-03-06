//
//  ContentView.swift
//  Grocery List
//
//  Created by Harun Naçar on 5.03.2025.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Item]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(items) { item in
                    Text(item.title)
                }
                
            }
            .navigationTitle("Grocery List")
            .overlay{
                if items.isEmpty {
                    ContentUnavailableView("Empty Cart", systemImage: "cart.circle", description:   Text("Add some items to the shopping list."))
                    
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
