//
//  SizzlaApp.swift
//  Sizzla
//
//  Created by Daniel Laratta on 10/23/24.
//

import SwiftUI

@main
struct SizzlaApp: App {
    // view model to be injected
    @State private var recipeViewModel = RecipeViewModel()
    
    init() {
        recipeViewModel.loadSampleData()
    }

    var body: some Scene {
        WindowGroup {
            MainView()
                .environment(recipeViewModel) // Inject RecipeListViewModel into the environment
        }
    }
}

