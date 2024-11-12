//
//  ToolBar.swift
//  Sizzla
//
//  Created by Daniel Laratta on 10/25/24.
//

import SwiftUI

struct ToolBar: View {
    let isHomeView: Bool
    
    var body: some View {
        VStack(spacing: 50){
            HStack {
                // TODO: Change "Dan" to user's name dynamically
                Text(isHomeView == true ? "Hey Dan" : "Sizzla")
                    .font(.system(size: 30))
                    .fontWeight(.black)
                
                Spacer()
                
                Image(systemName: "person.circle.fill")
                    .font(.system(size: 20))
            }
        }
    }
}

#Preview {
    ToolBar(isHomeView: true)
}
