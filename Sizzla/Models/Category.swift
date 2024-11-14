//
//  Category.swift
//  Sizzla
//
//  Created by Daniel Laratta on 11/14/24.
//

import Foundation

struct Category: Identifiable {
    var id: UUID
    var name: String
    var recipesCount: Int
    var recipes: [Recipe]
    var image: String
}
