//
//  NutritionView.swift
//  Achilles
//
//  Created by Austin Firestone on 6/17/24.
//

import SwiftUI

struct NutritionView: View {
    
    var proteinProgress = 0.5
    var calorieProgress = 0.3
    
    var proteinGoal = 240
    var calorieGoal = 3000
    
    var body: some View {
        ScrollView {
            VStack{
                Text("Dynamic Nutrition Goal")
                    .font(.title)
                    .padding()
                HStack {
                    Text("Protien = \(proteinGoal)")
                    Text("Calories = \(calorieGoal)")
                }
                .padding()
                .padding(.bottom)
                Spacer()
                Text("Progress")
                    .font(.title3)
                    .underline()
                    .padding()
                HStack(spacing: 50){
                    VStack{
                        Text("Protein")
                        Text("\((proteinProgress*100).formatted())% of \(proteinGoal)g")
                        ProgressView(value: proteinProgress)
                    }
                    VStack {
                        Text("Calories")
                        Text("\((calorieProgress*100).formatted())% of \(calorieGoal)kcal")
                        ProgressView(value: calorieProgress)
                    }
                }
                .progressViewStyle(.linear)
                Spacer()
                    
            }
        }
        
        //.progressViewStyle(GoldBorderedProgressViewStyle())
    }
}

struct GoldBorderedProgressViewStyle: ProgressViewStyle {
    func makeBody(configuration: Configuration) -> some View {
        ProgressView(configuration)
            .padding(4)
            .border(.gray, width: 3)
            .cornerRadius(4)
    }
}

#Preview {
    NutritionView()
}
