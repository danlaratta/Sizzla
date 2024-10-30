//
//  MainTabView.swift
//  Sizzla
//
//  Created by Daniel Laratta on 10/24/24.
//

import SwiftUI

struct MainTabView: View {
    
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
//            DiscoverView()
//                .tabItem {
//                    Label("Discover", systemImage: "magnifyingglass")
//                }
                
            RecipesView()
                .tabItem {
                    Label("Recipes", systemImage: "fork.knife")
                        .frame(width: 20, height: 200)
                }
            
            GroceriesView()
                .tabItem {
                    Label("Groceries", systemImage: "checklist")
                        .frame(width: 20, height: 200)
                }
        }
        .tint(Color("appGreen"))
    }
}

#Preview {
    MainTabView()
}
