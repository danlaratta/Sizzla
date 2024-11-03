//
//  RecipeCard.swift
//  Sizzla
//
//  Created by Daniel Laratta on 11/1/24.
//

import SwiftUI

struct RecipeCard: View {
    let image: String
    let name: String
    let category: String
    let timeCook: String
    let rating: String
    
    var body: some View {
        HStack {
            Image(image)
                .resizable()
                .scaledToFill()
                .frame(width: 175, height: 175)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .clipped() // Ensures it crops within the frame
            
            
            VStack(alignment: .leading) {
                Text(name)
                    .font(.title)
                
                Text(category)
                
                Text(timeCook)
                
                Text("\(Image(systemName: "star.fill")) \(rating)")
                    .foregroundStyle(Color("appOrange"))
                
            }
        }
        .frame(maxWidth: .infinity, maxHeight: 200)
        .background(.red)
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
    
//    HStack(spacing: 16) {
//                // Image Section
//                Image(image)
//                    .resizable()
//                    .scaledToFill()
//                    .frame(width: 100, height: 100) // Square image
//                    .clipShape(RoundedRectangle(cornerRadius: 10))
//                    .clipped() // Ensures it crops within the frame
//                
//                // Text Section
//                VStack(alignment: .leading, spacing: 4) {
//                    Text(name)
//                        .font(.headline)
//                        .lineLimit(1)
//                    
//                    Text(category)
//                        .font(.subheadline)
//                        .foregroundColor(.secondary)
//                    
//                    Text(timeCook)
//                        .font(.subheadline)
//                        .foregroundColor(.secondary)
//                    
//                    HStack(spacing: 4) {
//                        Image(systemName: "star.fill")
//                            .foregroundColor(Color("appOrange"))
//                        Text(rating)
//                            .foregroundColor(.secondary)
//                    }
//                }
//                .padding(.vertical, 10) // Padding around text section for spacing consistency
//            }
//            .padding(16) // Padding inside card
//            .background(Color.mint)
//            .clipShape(RoundedRectangle(cornerRadius: 15))
//            .shadow(radius: 5) // Optional: shadow for elevation effect
//        }
}


#Preview {
    RecipeCard(image: "burger", name: "Cheese Burger", category: "American", timeCook: "25 mins", rating: "4.5")
}
