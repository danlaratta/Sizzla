//
//  RecipeCard.swift
//  Sizzla
//
//  Created by Daniel Laratta on 11/5/24.
//

import SwiftUI

struct RecipeCard: View {
//    @Environment(RecipeViewModel.self) private var recipeViewModel
    @Bindable var recipe: Recipe
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottomLeading) {
                // MARK: Image
                Image(recipe.image)
                    .resizable()
                    .scaledToFill()
                    .frame(height: 225)
                
                // MARK: Gradient Overlay
                LinearGradient(
                    gradient: Gradient(stops: [
                        .init(color: Color.black.opacity(0.2), location: 0.0), 
                        .init(color: Color.black.opacity(0.4), location: 0.6),
                        .init(color: Color.black.opacity(0.8), location: 1.0)
                    ]),
                    startPoint: .top,
                    endPoint: .bottom
                )
                .clipShape(RoundedRectangle(cornerRadius: 10))
                
                
                HStack {
                    VStack(alignment: .leading) {
                        Spacer()
                        
                        Text(recipe.name)
                            .font(.title3.bold())
                            .foregroundStyle(.white)
                        
                        HStack {
                            Text(recipe.timeCook)
                                .foregroundStyle(.white)
                            
                            Text("\(Image(systemName: "star.fill")) \(recipe.rating)")
                                .foregroundStyle(.white)
                        }
                    }
                    
                    Spacer()
                    
                    VStack {
                        Spacer()
                        
                        Button {
//                            recipeViewModel.toggleSaved(for: recipe.id)
                            recipe.isSaved.toggle()
                        } label: {
                            ZStack {
                                Image(systemName: recipe.isSaved ? "heart.fill" : "heart")
                                    .font(.system(size: 20))
                                    .foregroundStyle(recipe.isSaved ? Color("appOrange") : .white)
                            }
                        }
                    }
                }
                .padding()
            }
        }
        .frame(maxHeight: 225)
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

#Preview {
    RecipeCard(recipe: Recipe(image: "burger", name: "Cheese Burger", timeCook: "25 mins", rating: "4.5", ingredients: ["Flour", "Eggs", "Milk"]))
        .environment(RecipeViewModel())
}
