//
//  IngredientCard.swift
//  Sizzla
//
//  Created by Daniel Laratta on 11/13/24.
//

import SwiftUI

struct IngredientCard: View {
    let image: String
    let name: String
    let amount: String
    let unit: String
    
    var body: some View {
            ZStack(alignment: .leading) {
                HStack {
                    Image(image)
                        .resizable()
                        .scaledToFill() // Fill the square frame
                        .frame(width: 60, height: 60) // Set square dimensions
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .clipped() // Crop any overflow to keep the image square
                    
                    Text(name)
                    
                    Spacer()
                    
                    HStack {
                        Text("\(amount) \(unit)")
                    }
                }
                .frame(maxHeight: 85)
            }
            .frame(maxWidth: .infinity, maxHeight: 75)
        }
}

#Preview {
    IngredientCard(image: "burger", name: "Garlic Powder", amount: "1", unit: "Tbsp")
}
