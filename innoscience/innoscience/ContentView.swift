//
//  ContentView.swift
//  innoscience
//
//  Created by Vijayaganapathy Pavithraa on 21/8/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            
            Home2View()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
            AIView()
                .tabItem {
                    Label("My Quest", systemImage: "figure.run")
                }
            RewardsView()
                .tabItem {
                    Label("Rewards", systemImage: "gift")
                }
        }
    }
}
#Preview {
    ContentView()
}
