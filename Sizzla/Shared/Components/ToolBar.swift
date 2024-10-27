//
//  ToolBar.swift
//  Sizzla
//
//  Created by Daniel Laratta on 10/25/24.
//

import SwiftUI

struct ToolBar: View {
    var title: String
    var filtersDestination: AnyView
    
    var body: some View {
        HStack {
            // Leading Item (Title)
            Text(title)
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Spacer()
            
            // Trailing Item (Filters Button)
            NavigationLink(destination: filtersDestination) {
                Image(systemName: "slider.horizontal.3")
                    .foregroundStyle(.black)
            }
        }
    }
}

#Preview {
    ToolBar(title: "Logo", filtersDestination: AnyView(DiscoverView()))
}
