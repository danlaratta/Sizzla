//
//  DiscoverView.swift
//  Sizzla
//
//  Created by Daniel Laratta on 10/24/24.
//

import SwiftUI

struct RecipesView: View {
    @State private var searchText = ""
    @State private var isGridView = false
    let columns = Array(repeating: GridItem(.flexible()), count: 2)
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 30) {
                SearchBar(searchText: $searchText)
                
                VStack(alignment: .leading) {
                    HStack {
                        HStack {
                            Image(systemName: "plus.square")
                            
                            Text("New Recipe")
                                .font(.headline)
                        }
                        
                        Spacer()
                        
                        Text("Sort")
                            .font(.callout)
                    }
                    
                    ScrollView {
                        LazyVGrid(columns: columns) {
                            ForEach(0..<4) { _ in
                                NavigationLink(destination: RecipeListView(isGridView: $isGridView)) {
                                    CategoryCard(image: "burger", name: "Breakfast", numRecipes: "5")
                                        .padding(.top, 5)
                                }
                            }
                        }
                    }
                }
                .padding(.vertical, 10)
            }
            .padding()
            .grayBackground()
            .toolbar {
                ToolbarItem(placement: .principal) {
                    ToolBar(isHomeView: false)
                }
            }
            .toolbarBackground(Color("bg"), for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    RecipesView()
}
