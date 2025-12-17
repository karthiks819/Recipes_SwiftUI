//
//  RecipeModel.swift
//  Recipe_SwiftUI
//
//  Created by Karthik Solleti on 17/12/25.
//

import Foundation

struct RecipeModel: Identifiable {
    let id = UUID()
    let name: String
    let caloriesPer100Gms: Int
    let recipe: String
    let recipeImage: String
    let recipeURL: String
    
}
