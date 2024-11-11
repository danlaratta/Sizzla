//
//  RecipeCard.swift
//  Sizzla
//
//  Created by Daniel Laratta on 11/5/24.
//

import SwiftUI

struct RecipeCard: View {
    @State private var isSaved = false
    let image: String
    let name: String
    let timeCook: String
    let rating: String
    
    // TODO: Clean up view so it's less clunky
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottomLeading) {
                // MARK: Image
                Image(image)
                    .resizable()
                    .scaledToFill()
                    .frame(height: 225)
                
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
                
                
                HStack {
                    VStack(alignment: .leading) {
                        Spacer()
                        
                        Text(name)
                            .font(.title3.bold())
                            .foregroundStyle(.white)
                        
                        HStack {
                            Text(timeCook)
                                .foregroundStyle(.white)
                            
                            Text("\(Image(systemName: "star.fill")) \(rating)")
                                .foregroundStyle(.white)
                        }
                    }
                    
                    Spacer()
                    
                    VStack {
                        Spacer()
                        
                        Button {
                            isSaved.toggle()
                        } label: {
                            ZStack {
                                // TODO: decide design (Animate color change so its more smooth if using Cicle or cool animation when tapped)
//                                Circle()
//                                    .frame(width: 30, height: 30)
//                                    .foregroundStyle(isSaved ? Color("appOrange") : .white)
//                                    .foregroundStyle(.white)
                                
                                Image(systemName: isSaved ? "heart.fill" : "heart")
                                    .font(.system(size: 20))
//                                    .foregroundStyle(isSaved ? .white : .black)
//                                    .foregroundStyle(isSaved ? Color("appOrange") : .black)
                                    .foregroundStyle(isSaved ? Color("appOrange") : .white)
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
    RecipeCard(image: "burger", name: "Cheese Burger", timeCook: "25 mins", rating: "4.5")
}
