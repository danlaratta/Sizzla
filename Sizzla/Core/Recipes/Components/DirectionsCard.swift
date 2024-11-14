//
//  DirectionsCard.swift
//  Sizzla
//
//  Created by Daniel Laratta on 11/13/24.
//

import SwiftUI

struct DirectionsCard: View {
    let step: String
    let direction: String
    
    var body: some View {
        HStack(alignment: .top) {
            HStack {
                Text("\(step).")
                    .font(.title3.bold())
                    .foregroundStyle(Color("appGreen"))
            }
            .frame(width: 35, alignment: .leading)
            
            
            HStack {
                Text(direction)
                    .lineLimit(nil) // Allows unlimited lines
                    .fixedSize(horizontal: false, vertical: true)
                    .multilineTextAlignment(.leading)
            }
        }
    }
}

#Preview {
    DirectionsCard(step: "1", direction: "Step 1")
}
