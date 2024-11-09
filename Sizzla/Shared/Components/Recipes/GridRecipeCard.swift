//
//  GridRecipeCard.swift
//  Sizzla
//
//  Created by Daniel Laratta on 11/8/24.
//

import SwiftUI

struct GridRecipeCard: View {
    let image: String
    let name: String
    let timeCook: String
    let rating: String
    @State private var isSaved = false
    
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            // MARK: Image
            Image(image)
                .resizable()
                .scaledToFill()
            
            // MARK: Gradient Overlay
            LinearGradient(
                gradient: Gradient(stops: [
                    .init(color: Color.black.opacity(0.2), location: 0.0),  // Top, lighter
                    .init(color: Color.black.opacity(0.4), location: 0.6),  // 70% point
                    .init(color: Color.black.opacity(0.8), location: 1.0)   // Bottom, darker
                ]),
                startPoint: .top,
                endPoint: .bottom
            )
            .clipShape(RoundedRectangle(cornerRadius: 10))
            
            // MARK: Recipe Info
            HStack() {
                VStack(alignment: .leading) {
                    Spacer()
                    
                    Text(name)
                        .font(.headline.bold())
                        .foregroundStyle(.white)
                    
                    HStack {
                        Text(timeCook)
                            .font(.footnote)
                            .foregroundStyle(.white)
                        
                        Text("\(Image(systemName: "star.fill")) \(rating)")
                            .font(.footnote)
                            .foregroundStyle(.white)
                    }
                }
            }
            .padding()
        }
        .frame(maxHeight: 277)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .overlay(alignment: .topTrailing) {
            Image(systemName: isSaved ? "heart.fill" : "heart")
                .font(.system(size: 20))
//                                    .foregroundStyle(isSaved ? .white : .black)
//                                    .foregroundStyle(isSaved ? Color("appOrange") : .black)
                .foregroundStyle(isSaved ? Color("appOrange") : .white)
                .padding()
        }
    }
}

#Preview {
    GridRecipeCard(image: "burger", name: "Cheese Burger", timeCook: "25 mins", rating: "4.5")
}
