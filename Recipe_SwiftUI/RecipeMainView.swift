//
//  ContentView.swift
//  Recipe_SwiftUI
//
//  Created by Karthik Solleti on 17/12/25.
//

import SwiftUI

struct RecipeMainView: View {
    @StateObject var recipeViewModel: RecipeViewModel = RecipeViewModel()
    var body: some View {
        NavigationView {
            VStack {
                List(self.recipeViewModel.recipeModels) { recipeModel in
                    
                    NavigationLink {
                        ShowRecipeView(theRecipe: recipeModel.recipe, imageName: recipeModel.recipeImage, recipeURL: recipeModel.recipeURL)
                            .navigationBarTitle("Recipes", displayMode: .inline)
                    } label: {
                        ListItemView(
                            name: recipeModel.name,
                            calories: recipeModel.caloriesPer100Gms,
                            imageName: recipeModel.recipeImage
                        )
                    }

                    
                }
                .listStyle(.plain)
                .navigationTitle("Recipes")
            }

        }
    }
}

#Preview {
    RecipeMainView()
}
