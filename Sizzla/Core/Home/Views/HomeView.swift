//
//  DiscoverView.swift
//  Sizzla
//
//  Created by Daniel Laratta on 10/24/24.
//

import SwiftUI
    
struct HomeView: View {
    
    @State private var searchText = ""
    let categories = ["All", "Breakfast", "Lunch", "Dinner", "Test1", "Test2"]

    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 20) {
                VStack(alignment: .leading) {
                    Text("Hey Dan!")
                        .font(.system(size: 30))
                        .fontWeight(.black)
                    
                    Text("Ready to get cooking?")
                        .font(.body)
                }
//                .padding(.bottom, 10)
                
                TextField("\(Image(systemName: "magnifyingglass")) Search", text: $searchText)
                    .font(.subheadline)
                    .padding(12)
                    .background(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .shadow(radius: 3)
                
                Section(header:
                    Text("Categories")
                        .font(.title3.bold())
                ) {
                    ScrollView(.horizontal) {
                        HStack(spacing: 10) {
                            ForEach(categories, id: \.self) { category in
                                Text(category)
                                    .padding(.horizontal, 15)
                                    .padding(.vertical, 10)
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 10)
                                            .strokeBorder(Color("appGreen"), lineWidth: 2)
                                    )
                            }
                        }
                    }
                    .scrollIndicators(.hidden)
                }
                
                // MARK: create a separate component for this
                Section(header:
                    Text("Recommended")
                        .font(.title3.bold())
                ) {
                    ScrollView(.horizontal) {
                        HStack {
                            RecipeCardView()
                            RecipeCardView()
                            RecipeCardView()
                        }
                    }
                    .frame(height: 220)
                }
                
                Spacer()
            }
            .padding()
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Text("Sizzla")
                        .fontWeight(.bold)
                        .font(.title2)
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    Image(systemName: "person.circle.fill")
                        .font(.system(size: 20))
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .grayBackground()
        }
    }
}

#Preview {
    HomeView()
}

struct RecipeCardView: View {
    var body: some View {
        ZStack {
            Image("burger")
                .resizable()
                .scaledToFill()
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            Color.black
                .opacity(0.4)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            VStack(alignment: .leading, spacing: 5) {
                Spacer()
                
                Text("Cheese Burger")
                    .foregroundStyle(.white)
                    .font(.subheadline.bold())
                
                HStack {
                    Text("\(Image(systemName: "clock")) 25 mins")
                        .foregroundStyle(.white)
                        .font(.caption)
                    
                    Spacer()
                    
                    Text("\(Image(systemName: "star.fill")) 4.86")
                        .foregroundStyle(.white)
                        .font(.caption)
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(8)
        }
    }
}
