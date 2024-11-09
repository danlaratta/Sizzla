//
//  Recipe.swift
//  Sizzla
//
//  Created by Daniel Laratta on 11/1/24.
//

import Foundation

struct Recipe: Identifiable, Hashable {
    let id: UUID = UUID()
    let image: String
    let name: String
    let category: String
    let timeCook: String
    let rating: String
    
}


