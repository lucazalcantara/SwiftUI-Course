//
//  DataController.swift
//  Bookworm
//
//  Created by Lucas  Alcantara  on 25/11/25.
//

import CoreData
import Foundation
import Combine

class DataController: ObservableObject {
    let container = NSPersistentContainer(name: "Bookworm")
    
    init() {
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Core Data failed to load: \(error.localizedDescription)")
            }
        }
    }
}
