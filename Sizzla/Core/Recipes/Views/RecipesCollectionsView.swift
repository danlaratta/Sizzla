//
//  DiscoverView.swift
//  Sizzla
//
//  Created by Daniel Laratta on 10/24/24.
//

import SwiftUI

struct RecipesCollectionsView: View {
    @State private var searchText = ""
    let columns = Array(repeating: GridItem(.flexible()), count: 2)
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 30) {
                SearchBar(searchText: $searchText)
                
                VStack(alignment: .leading) {
                    HStack {
                        HStack {
                            Image(systemName: "plus.square")
                            
                            Text("New Collection")
                                .font(.callout)
                        }
                        
                        Spacer()
                        
                        Text("Sort")
                            .font(.callout)
                    }
                    
                    ScrollView {
                        LazyVGrid(columns: columns) {
                            ForEach(0..<4) { _ in
                                CategoryCard()
                                    .padding(.top, 5)
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
    RecipesCollectionsView()
}

struct CategoryCard: View {
    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                Image("burger")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 130, height: 130)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .clipped()
                
                VStack(alignment: .leading) {
                    Text("Breakfast")
                        .font(.callout)
                        .fontWeight(.semibold)
                    
                    Text("Recipes: 5")
                        .font(.footnote)
                    
                }
                
            }
            .padding()
        }
        .frame(width: 177)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.white)
                .shadow(color: .black.opacity(0.2), radius: 2, x: 0, y: 4) // Add shadow here
        )
    }
}

