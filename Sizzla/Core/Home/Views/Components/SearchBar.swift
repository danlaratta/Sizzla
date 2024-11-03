//
//  SearchBar.swift
//  Sizzla
//
//  Created by Daniel Laratta on 11/1/24.
//

import SwiftUI

struct SearchBar: View {
    @Binding var searchText: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 25) {
            TextField("\(Image(systemName: "magnifyingglass")) Search", text: $searchText)
                .font(.subheadline)
                .padding(12)
                .background(.white)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .shadow(radius: 3)
        }
        .padding(.top, 10)
    }
}

#Preview {
    SearchBar(searchText: .constant("Cheese Burger"))
}
