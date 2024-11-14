//
//  Recipe.swift
//  Sizzla
//
//  Created by Daniel Laratta on 11/1/24.
//

import Foundation

//struct Recipe: Identifiable {
//    let id: UUID = UUID()
//    let image: String
//    let name: String
//    let timeCook: String
//    let rating: String
//    var isSaved: Bool = false
//}

@Observable
class Recipe: ObservableObject, Identifiable {
    var id: UUID
    var image: String
    var name: String
    var timeCook: String
    var rating: String
    var isSaved: Bool
    var ingredients: [String]

    init(id: UUID = UUID(), image: String, name: String, timeCook: String, rating: String, isSaved: Bool = true, ingredients: [String]) {
        self.id = id
        self.image = image
        self.name = name
        self.timeCook = timeCook
        self.rating = rating
        self.isSaved = isSaved
        self.ingredients = ingredients
    }

    func toggleSaved() {
        isSaved.toggle() // Toggle the isSaved state
    }
}
