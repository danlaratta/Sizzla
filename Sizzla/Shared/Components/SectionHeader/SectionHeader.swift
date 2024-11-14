//
//  SectionHeader.swift
//  Sizzla
//
//  Created by Daniel Laratta on 11/8/24.
//

import SwiftUI

struct SectionHeader: View {
    @Binding var isGridView: Bool
    @Binding var header: String
    
    var body: some View {
        HStack {
            Text(header)
                .font(.title3.bold())
            
            Spacer()
            
            HStack {
                Button {
                    isGridView.toggle()
                } label: {
                    Image(systemName: isGridView ? "rectangle.grid.2x2.fill" : "rectangle.grid.2x2")
                        .font(.system(size: 20))
                        .foregroundStyle(isGridView ? Color("appOrange") : .black)
                }
                
                Image(systemName: "slider.horizontal.3")
                    .font(.system(size: 20))
            }
        }
    }
}

#Preview {
    SectionHeader(isGridView: .constant(true), header: .constant("All"))
}
