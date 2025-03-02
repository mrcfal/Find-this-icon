//
//  ContentView.swift
//  Find-this-icon
//
//  Created by Marco Falanga on 28/02/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            InputView()
                .tabItem {
                    Label("Input", systemImage: "pencil")
                }
            CellView()
                .tabItem {
                    Label("Cell", systemImage: "rectangle")
                }
        }
    }
}

#Preview {
    ContentView()
}
