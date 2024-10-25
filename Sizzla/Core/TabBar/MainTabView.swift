//
//  MainTabView.swift
//  Sizzla
//
//  Created by Daniel Laratta on 10/24/24.
//

import SwiftUI

struct MainTabView: View {
    
    @State private var selectedTab = 0
    
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
                .onAppear { selectedTab = 0 }
                .tag(0)
            
            
            Text("Tab 3")
                .tabItem {
                    Label("Map", systemImage: "map")
                }
                .onAppear { selectedTab = 1 }
                .tag(1)
                
            Text("Tab 3")
                .tabItem {
                    Label("Profile", systemImage: "person")
                        .frame(width: 20, height: 200)
                }
                .onAppear { selectedTab = 2 }
                .tag(2)
        }
    }
}

#Preview {
    MainTabView()
}
