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
            Group {
                HomeView()
                    .tabItem {
                        TabLabel(text: "Home", icon: "house")
                    }
                
                RecipesView()
                    .tabItem {
                        TabLabel(text: "Recipes", icon: "fork.knife")
                    }
                
                GroceriesView()
                    .tabItem {
                        TabLabel(text: "Groceries", icon: "checklist")
                    }
            }
            .toolbarBackground(.white, for: .tabBar)
            .toolbarBackground(.visible, for: .tabBar)
        }
        .tint(Color("appGreen"))
    }
}

#Preview {
    MainTabView()
        .environment(RecipeViewModel())
}

struct TabLabel: View {
    let text: String
    let icon: String
    
    var body: some View {
        Label {
            Text(text)
        } icon: {
            Image(systemName: icon)
                .resizable() // Make the icon resizable
                .frame(width: 10, height: 10) // Adjust the frame for larger size
//                .padding(.bott1m, 10) // Add bottom padding to center it a bit more
        }
    }
}
