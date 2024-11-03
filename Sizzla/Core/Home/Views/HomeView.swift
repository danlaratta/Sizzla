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
    let categories = ["All", "Breakfast", "Lunch", "Dinner", "Test1", "Test2"]

    let recipeData: [Recipe] = [
        Recipe(image: "burger", name: "Cheese Burger", category: "Dinner", timeCook: "20 mins", rating: "4.76"),
        Recipe(image: "burger", name: "Cheese Burger", category: "Dinner", timeCook: "20 mins", rating: "4.76"),
        Recipe(image: "burger", name: "Cheese Burger", category: "Dinner", timeCook: "20 mins", rating: "4.76"),
    ]
    
    
    var body: some View {
        NavigationStack {
            Group {
                VStack(alignment: .leading, spacing: 40) {
                    
                    // MARK: Search Bar
                    SearchBar(searchText: $searchText)
                    
                    // MARK: Category Buttons
                    CategoryButtons(activeCategory: $activeCategory)
                    
                    // MARK: Recipe Cards
//                    VStack(alignment: .leading) {
//                        Section(header: SectionHeader(header: activeCategory)) {
//                            // Updated Recipe Cards Section with List
//                            List(recipeData) { recipe in
//                                VStack {
//                                    RecipeCard(
//                                        image: recipe.image,
//                                        name: recipe.name,
//                                        category: recipe.category,
//                                        timeCook: recipe.timeCook,
//                                        rating: recipe.rating
//                                    )
//                                    .padding() // Add padding inside each card
//                                    .background(Color.white) // White background for each card
//                                    .cornerRadius(10) // Rounded corners for each card
//                                    .shadow(color: .gray.opacity(0.2), radius: 5, x: 0, y: 5) // Optional shadow for separation
//                                }
//                                .padding(.vertical, 8) // Vertical spacing between cards
//                                .listRowSeparator(.hidden) // Hide dividers
//                                .listRowBackground(Color.clear) // Transparent background to blend with parent background
//                            }
//                            .listStyle(.plain) // Minimal styling for a cleaner appearance
//                            .padding(.horizontal) // Padding for the entire list to avoid screen edges
//
//                        }
//                    }
                    
                }
                .padding()
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        // TODO: - extract VStack into subview or component (create a toolbar component in shared folder)
                        VStack(spacing: 50){
                            HStack {
                                Text("Hey Dan!")
                                    .font(.system(size: 30))
                                    .fontWeight(.black)
                                
                                Spacer()
                                
                                Image(systemName: "person.circle.fill")
                                    .font(.system(size: 20))
                            }
                        }
                    }
                }
                .toolbarBackground(Color("bg"), for: .navigationBar)
                .toolbarBackground(.visible, for: .navigationBar)
                .navigationBarTitleDisplayMode(.inline)
            }
            .grayBackground()
        }
    }
}

#Preview {
    HomeView()
}



struct SectionHeader: View {
    let header: String
    
    var body: some View {
        Text(header)
            .font(.title3.bold())
    }
}


