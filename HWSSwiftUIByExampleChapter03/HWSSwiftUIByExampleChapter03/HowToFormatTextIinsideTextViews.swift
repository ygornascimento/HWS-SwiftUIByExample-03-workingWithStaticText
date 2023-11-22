//
//  HowToFormatTextIinsideTextViews.swift
//  HWSSwiftUIByExampleChapter03
//
//  Created by Ygor Nascimento on 22/11/23.
//

import SwiftUI

struct HowToFormatTextIinsideTextViews: View {
    @State private var ingredients = [String]()
    @State private var rolls = [Int]()
    let length = Measurement(value: 225, unit: UnitLength.centimeters)
    static let taskDateFormat: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter
    }()
    
    let dueDate = Date.now
    
    var body: some View {
        VStack {
            Text(ingredients, format: .list(type: .and))
            
            Button("Add Ingredient") {
                let possibles = ["Egg", "Sausage", "Bacon", "Spam"]
                
                if let newIngredient = possibles.randomElement() {
                    ingredients.append(newIngredient)
                }
            }
        }
        
//        Spacer()
        
        VStack {
            Text(rolls, format: .list(memberStyle: .number, type: .and))
            
            Button("Roll Dice") {
                let result = Int.random(in: 1...6)
                rolls.append(result)
            }
        }
        
        Text(length, format: .measurement(width: .wide))
        Text(72.399, format: .currency(code: "BRL"))
        Text("Task due date: \(dueDate, formatter: Self.taskDateFormat)")
    }
}

#Preview {
    HowToFormatTextIinsideTextViews()
}
