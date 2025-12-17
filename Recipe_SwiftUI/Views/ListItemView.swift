//
//  ListItemView.swift
//  Recipe_SwiftUI
//
//  Created by Karthik Solleti on 17/12/25.
//

import SwiftUI

struct ListItemView: View {
    let name: String
    let calories: Int
    let imageName: String
    let imageDim = CGFloat(70)
    var body: some View {
        HStack {
            
            VStack(alignment: .leading, spacing: 5) {
                Text(name)
                    .foregroundStyle(Color.orange)
                
                Text("\(calories) calories per 100 grams")
                    .font(.caption)
                    .foregroundStyle(Color.white)
                    .fontWeight(.semibold)
            }
            .padding()
            
            Spacer()
            
            Image(imageName)
                .resizable()
                .frame(width: imageDim, height: imageDim)
                .cornerRadius(10)
                .overlay {
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.white, lineWidth: 3.0)
                }
                .shadow(color: Color.white.opacity(0.7), radius: 10, x: 0, y: 0)
        }
        .padding()
        .background(Color.black.cornerRadius(20))
        .padding()
    }
}

#Preview {
    ListItemView(name: "Apple Pie", calories: 130, imageName: "IMGApplePie")
}
