//
//  AddFoodView.swift
//  iCalories
//
//  Created by Ali Amanvermez on 9.03.2023.
//

import SwiftUI

struct AddFoodView: View {
    @Environment(\.managedObjectContext) var managedObject
    @Environment(\.dismiss) var dismiss
    
    @State private var foodName : String = "Default"
    @State private var calories : Double = 0
    
    
    var body: some View {
        Form{
            Section {
                TextField("Food Name", text: $foodName)
                VStack{
                    Text("Calories: \(Int(calories))")
                    Slider(value: $calories, in: 0...1000, step: 10)
                }.padding()
                HStack{
                    Spacer()
                    Button("Save") {
                        DataController().addFood(name: foodName, calories: calories, context: managedObject)
                        dismiss()
                    }
                    Spacer()
                }
            }
        }
    }
}

struct AddFoodView_Previews: PreviewProvider {
    static var previews: some View {
        AddFoodView()
    }
}
