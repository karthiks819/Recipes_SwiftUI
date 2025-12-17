//
//  RceipeViewModel.swift
//  Recipe_SwiftUI
//
//  Created by Karthik Solleti on 17/12/25.
//

import Foundation
import Combine

class RecipeViewModel: ObservableObject {
    
    @Published var recipeModels: [RecipeModel] = []
    
    init() {
        self.recipeModels.append(
            RecipeModel(
                name: "Hummus",
                caloriesPer100Gms: 322,
                recipe: """
            **Ingredients**
            ----
            -----_
            ____
            """,
                recipeImage: "IMGhummus",
                recipeURL: "https://www.inspiredtaste.net/15938/easy-and-smooth-hummus-recipe/"
            )
        )
        
        self.recipeModels.append(
            RecipeModel(
                name: "Homemade Pizza",
                caloriesPer100Gms: 166,
                recipe: """
            **Ingredients**
            Pizza Stuff
            ----
            -----_
            ____
            """,
                recipeImage: "IMGPizza",
                recipeURL: "https://www.inspiredtaste.net/59819/homemade-pizza-dough/"
            )
        )
        
        
        self.recipeModels.append(
            RecipeModel(
                name: "Apple Pie",
                caloriesPer100Gms: 166,
                recipe: """
            **Ingredients**
            ApplePie Stuff
            ----
            -----_
            ____
            """,
                recipeImage: "IMGApplePie",
                recipeURL: "https://www.inspiredtaste.net/43362/apple-pie/"
            )
        )
    }
}
