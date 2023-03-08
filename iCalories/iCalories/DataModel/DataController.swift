//
//  DataController.swift
//  iCalories
//
//  Created by Ali Amanvermez on 9.03.2023.
//

import Foundation
import CoreData
class DataController : ObservableObject {
    let container = NSPersistentContainer(name: "FoodModel")
    
     init() {
         container.loadPersistentStores { description ,error in
             if let error = error {
                 print("Failed to load data : \(error.localizedDescription)")
             }
         }
    }
    
    func save(context : NSManagedObjectContext) {
        do {
            try context.save()
            print("Data added")
        }catch {
            print("Failed to save")
        }
    }
    
    func addFood(name : String, calories : Double, context : NSManagedObjectContext) {
        let food = Food(context: context)
        food.name = name
        food.date = Date()
        food.id = UUID()
        food.calories = calories
        
        save(context: context)
    }
    
    func editFood(food : Food, name: String, calories : Double, context : NSManagedObjectContext) {
        food.name = name
        food.date = Date()
        food.calories = calories
        save(context: context)
    }
}
