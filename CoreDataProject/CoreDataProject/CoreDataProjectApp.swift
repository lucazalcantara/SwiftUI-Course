//
//  CoreDataProjectApp.swift
//  CoreDataProject
//
//  Created by Lucas  Alcantara  on 25/11/25.
//

import CoreData
import SwiftUI

@main
struct CoreDataProjectApp: App {
    @StateObject private var dataController = DataController()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}



