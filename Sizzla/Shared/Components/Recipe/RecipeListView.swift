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
    @Environment(RecipeViewModel.self) private var recipeViewModel
    
    var body: some View {
        ScrollView {
            if !isGridView {
                ForEach(recipeViewModel.recipes) { recipe in
                    NavigationLink(destination: RecipeDetailsView()) {
                        RecipeCard(recipe: recipe)
                    }
                }
            }
            else {
                LazyVGrid(columns: columns) {
                    ForEach(recipeViewModel.recipes) { recipe in
                        NavigationLink(destination: RecipeDetailsView()) {
                            GridRecipeCard(image: recipe.image, name: recipe.name, timeCook: recipe.timeCook, rating: recipe.rating)
                        }
                    }
                }
            }
        }
        .scrollIndicators(.hidden)
    }
}

#Preview {
    RecipeListView(isGridView: .constant(false))
        .environment(RecipeViewModel())
}
