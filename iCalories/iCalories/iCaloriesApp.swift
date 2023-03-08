//
//  iCaloriesApp.swift
//  iCalories
//
//  Created by Ali Amanvermez on 9.03.2023.
//

import SwiftUI

@main
struct iCaloriesApp: App {
   
    @StateObject private var dataController = DataController()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
