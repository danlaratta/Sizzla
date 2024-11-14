//
//  RecipeDetailsView.swift
//  Sizzla
//
//  Created by Daniel Laratta on 11/12/24.
//

import SwiftUI

struct RecipeDetails: View {
    
    let ingredients = [
        ("burger", "Garlic Powder", "1", "Tbsp"),
        ("burger", "Onion Powder", "2", "Tbsp"),
        ("burger", "Salt", "1", "Tsp"),
        ("burger", "Pepper", "1", "Tsp"),
        ("burger", "Paprika", "1", "Tbsp")
    ]

    let directions = [
        "Cut orange, peppers, onion & broccoli into large bite-sized chunks and place in the dish.",
        "Season the ingredients with salt and pepper.",
        "Drizzle olive oil and mix everything well.",
        "Bake for 20 minutes.",
        "Serve and enjoy."
    ]

    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 50) {
                
                // MARK: Recipe Info
                VStack(alignment: .leading, spacing: 30) {
                    Text("Cheese Burger")
                        .font(.title.bold())
                    
                    HStack {
                        RecipeInfo(value: "6", label: "Servings")
                            .frame(maxWidth: .infinity)
                        
                        RecipeInfo(value: "25", label: "Minutes")
                            .frame(maxWidth: .infinity)
                        
                        RecipeInfo(value: "725", label: "Calories")
                            .frame(maxWidth: .infinity)
                        
                        RecipeInfo(value: "4.7", label: "Rating")
                            .frame(maxWidth: .infinity)
                        
                    }
                    .frame(maxWidth: .infinity)
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color("appGreen"), lineWidth: 2)
                    )
                }
                
                
                // MARK: Ingredients
                VStack(alignment: .leading, spacing: 20) {
                    Section(header: Header(header: "Ingredients")) {
                        ForEach(ingredients.indices, id: \.self) { index in
                            let ingredient = ingredients[index]
                            IngredientCard(image: ingredient.0, name: ingredient.1, amount: ingredient.2, unit: ingredient.3)
                            
                            if index < ingredients.count - 1 { // Only add Divider if it's not the last item
                                Divider()
                            }
                        }
                    }
                }
                
                // MARK: Directions
                VStack(alignment: .leading, spacing: 20) {
                    Section(header: Header(header: "Directions")) {
                        ForEach(directions.indices, id: \.self) { index in
                            let direction = directions[index]
                            DirectionsCard(step: "\(index + 1)", direction: direction)
                            
                            if index < directions.count - 1 { // Only add Divider if it's not the last item
                                Divider()
                            }
                        }
                    }
                }
                .padding(.bottom, 75)
            }
            .frame(maxWidth: .infinity)
            .padding()
            .padding(.top, 30)
            .background(
                RoundedRectangle(cornerRadius: 30)
                    .fill(.white)
            )
        }
    }
}

#Preview {
    RecipeDetails()
}

struct RecipeInfo: View {
    let value: String
    let label: String
    
    var body: some View {
        VStack {
            Text(value)
                .font(.headline)
                .foregroundStyle(Color("appGreen"))
            
            Text(label)
                .font(.callout)
                .foregroundStyle(Color(.systemGray))
            
        }
    }
}

struct Header: View {
    let header: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(header)
                .font(.title2.bold())
            
        }
    }
}
