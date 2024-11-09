//
//  RecipeListView.swift
//  Sizzla
//
//  Created by Daniel Laratta on 11/3/24.
//

import SwiftUI

struct RecipeListView: View {
    @Binding var isGridView: Bool
    let columns = Array(repeating: GridItem(.flexible()), count: 2)
    
    let recipeData: [Recipe] = [
        Recipe(image: "burger", name: "Cheese Burger", category: "Dinner", timeCook: "20 mins", rating: "4.76"),
        Recipe(image: "burger", name: "Cheese Burger", category: "Dinner", timeCook: "20 mins", rating: "4.76"),
        Recipe(image: "burger", name: "Cheese Burger", category: "Dinner", timeCook: "20 mins", rating: "4.76"),
        Recipe(image: "burger", name: "Cheese Burger", category: "Dinner", timeCook: "20 mins", rating: "4.76"),
        Recipe(image: "burger", name: "Cheese Burger", category: "Dinner", timeCook: "20 mins", rating: "4.76"),
        Recipe(image: "burger", name: "Cheese Burger", category: "Dinner", timeCook: "20 mins", rating: "4.76"),
    ]
    
    var body: some View {
        ScrollView {
            if !isGridView {
                ForEach(recipeData, id: \.self) { recipe in
                    RecipeCard(image: recipe.image, name: recipe.name, timeCook: recipe.timeCook, rating: recipe.rating)
                }
            }
            else {
                LazyVGrid(columns: columns) {
                    ForEach(recipeData, id: \.self) { recipe in
                        GridRecipeCard(image: recipe.image, name: recipe.name, timeCook: recipe.timeCook, rating: recipe.rating)
                    }
                }
            }
        }
        .scrollIndicators(.hidden)
    }
}

#Preview {
    RecipeListView(isGridView: .constant(false))
}
