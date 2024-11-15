//
//  CategoryCard.swift
//  Sizzla
//
//  Created by Daniel Laratta on 11/15/24.
//

import SwiftUI

struct CategoryCard: View {
    let image: String
    let name: String
    let numRecipes: String
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                Image(image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 130, height: 130)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .clipped()
                
                VStack(alignment: .leading) {
                    Text(name)
                        .font(.callout)
                        .fontWeight(.semibold)
                    
                    Text("Recipes: \(numRecipes)")
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


#Preview {
    CategoryCard(image: "burger", name: "Breakfast", numRecipes: "5")
}
