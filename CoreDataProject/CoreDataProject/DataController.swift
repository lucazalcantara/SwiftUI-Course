//
//  DataController.swift
//  CoreDataProject
//
//  Created by Lucas  Alcantara  on 25/11/25.
//

import Combine
import CoreData
import Foundation

class DataController: ObservableObject {
    
    let container = NSPersistentContainer(name: "CoreDataProject")
    
    init() {
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Core Data failed to load: \(error.localizedDescription)")
                return
            }
            
            self.container.viewContext.mergePolicy = NSMergePolicy.mergeByPropertyObjectTrump
        }
    }
}
