//
//  ContentView.swift
//  Sizzla
//
//  Created by Daniel Laratta on 10/23/24.
//

import SwiftUI

struct MainView: View {
    @State var isLoggedIn: Bool = false
    
    var body: some View {
        MainTabView()
        
//        if(isLoggedIn) {
//            MainTabView()
//        }
//        else {
//            LoginView(isLoggedIn: $isLoggedIn)
//        }
    }
}

#Preview {
    MainView()
}
