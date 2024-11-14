//
//  RecipeViewModel.swift
//  Sizzla
//
//  Created by Daniel Laratta on 11/8/24.
//

import Foundation

@Observable
class RecipeViewModel {
    private(set) var recipes: [Recipe]
    
    init(recipes: [Recipe] = []) {
        self.recipes = recipes
        loadSampleData()
    }
    
    func toggleSaved(for recipeId: UUID) {
        if let index = recipes.firstIndex(where: { recipe in
            recipe.id == recipeId
        }) {
            recipes[index].isSaved.toggle()
        }
    }
    
    func loadSampleData() {
        recipes = [
            Recipe(image: "burger", name: "Cheese Burger", timeCook: "20 mins", rating: "4.76", ingredients: ["Flour", "Eggs", "Milk"]),
            Recipe(image: "burger", name: "Cheese Burger", timeCook: "20 mins", rating: "4.76", ingredients: ["Flour", "Eggs", "Milk"]),
            Recipe(image: "burger", name: "Cheese Burger", timeCook: "20 mins", rating: "4.76", ingredients: ["Flour", "Eggs", "Milk"]),
            Recipe(image: "burger", name: "Cheese Burger", timeCook: "20 mins", rating: "4.76", ingredients: ["Flour", "Eggs", "Milk"]),
            Recipe(image: "burger", name: "Cheese Burger", timeCook: "20 mins", rating: "4.76", ingredients: ["Flour", "Eggs", "Milk"]),
            Recipe(image: "burger", name: "Cheese Burger", timeCook: "20 mins", rating: "4.76", ingredients: ["Flour", "Eggs", "Milk"]),
        ]
    }
    
}
