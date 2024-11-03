//
//  CategoryButtons.swift
//  Sizzla
//
//  Created by Daniel Laratta on 11/3/24.
//

import SwiftUI

struct CategoryButtons: View {
    @Binding var activeCategory: String
    let categories = ["All", "Breakfast", "Lunch", "Dinner", "Test1", "Test2"]
    
    var body: some View {
        VStack(alignment: .leading) {
            ScrollView(.horizontal) {
                HStack(spacing:  10) {
                    ForEach(categories, id: \.self) { category in
                        CategoryButton(category: category, activeCategory: $activeCategory)
                    }
                }
            }
            .scrollIndicators(.hidden)
        }
    }
}

#Preview {
    CategoryButtons(activeCategory: .constant("All"))
}

struct CategoryButton: View {
    var category: String
    @Binding var activeCategory: String
    
    var body: some View {
        Text(category)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
            .background(activeCategory == category ? Color("appGreen") : .white)
            .foregroundStyle(activeCategory == category ? .white : Color("appGreen"))
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .strokeBorder(Color("appGreen"), lineWidth: 2)
            )
            .onTapGesture {
                activeCategory = category
            }
    }
}
