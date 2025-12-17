//
//  ShowRecipeView.swift
//  Recipe_SwiftUI
//
//  Created by Karthik Solleti on 17/12/25.
//

import SwiftUI


struct ShowRecipeView: View {
    var theRecipe: String
    var imageName: String
    var recipeURL: String
    
    var body: some View {
        ZStack {
            Color.gray
                .opacity(07)
                .ignoresSafeArea()
            VStack {
                ScrollView(.vertical, showsIndicators: false) {
                    Text(theRecipe)
                }
                Spacer()
                Link(destination: URL(string: recipeURL)!) {
                    ZStack {
                        Image(imageName)
                            .resizable()
                            .cornerRadius(20)
                            .scaleEffect(0.8)
                        
                        Text("Click Image For Recipe")
                            .foregroundStyle(Color.orange)
                            .font(.headline)
                            .padding()
                            .background(Capsule()
                                .fill(Color.black.opacity(0.7)))
                    }
                }
                
            }
            .padding()
        }
        
    }
}

#Preview {
    ShowRecipeView(theRecipe: "IngredientsIngredientsIngredientsIngredientsIngredientsIngredientsIngredientsIngredientsIngredientsIngredientsIngredientsIngredientsIngredientsIngredientsIngredientsIngredientsIngredientsIngredientsIngredientsIngredientsIngredients", imageName: "IMGhummus", recipeURL: "test")
}
