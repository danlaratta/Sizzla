//
//  DiscoverView.swift
//  Sizzla
//
//  Created by Daniel Laratta on 10/24/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Home View")
                    .padding() // Optional: Add some padding for better layout
            }
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
        }
    }
}

#Preview {
    HomeView()
}
