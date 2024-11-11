//
//  DiscoverView.swift
//  Sizzla
//
//  Created by Daniel Laratta on 10/24/24.
//

import SwiftUI

struct HomeView: View {
    @State private var searchText = ""
    @State private var activeCategory = "All"
    @State private var isGridView = false
    let categories = ["All", "Breakfast", "Lunch", "Dinner", "Test1", "Test2"]
    
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 30) {
                SearchBar(searchText: $searchText)
                
                CategoryButtons(activeCategory: $activeCategory)
                
                VStack(alignment: .leading) {
                    SectionHeader(isGridView: $isGridView, header: $activeCategory)
                    RecipeListView(isGridView: $isGridView)
                }
            }
            .padding(.horizontal)
            .grayBackground()
            .onTapGesture {
                UIApplication.shared.dismissKeyboard()
            }
            .toolbar {
                ToolbarItem(placement: .principal) {
                    ToolBar(isHomeView: true)
                }
            }
            .toolbarBackground(Color("bg"), for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    HomeView()
        .environment(RecipeViewModel())
}


