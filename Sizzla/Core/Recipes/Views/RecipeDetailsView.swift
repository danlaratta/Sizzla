//
//  RecipeDetailsView.swift
//  Sizzla
//
//  Created by Daniel Laratta on 11/12/24.
//

import SwiftUI

struct RecipeDetailsView: View {
    @State private var showSheet = true
    
    var body: some View {
        GeometryReader { geometry in
            ScrollView {
                VStack {
                    Image("burger")
                        .resizable()
                        .scaledToFill()
                        .frame(height: geometry.size.height * 0.4)
                        .clipped()
                    
                    VStack {
                        RecipeDetails()
                            .offset(y: -43)
                    }
                }
            }
            .ignoresSafeArea()
        }
    }
}

#Preview {
    RecipeDetailsView()
}
