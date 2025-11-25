//
//  ContentView.swift
//  CoreDataProject
//
//  Created by Lucas  Alcantara  on 25/11/25.
//

import CoreData
import SwiftUI

struct ContentView: View {
    @Environment(\.managedObjectContext) var moc
    
    var body: some View {
        Button("Save") {
            if moc.hasChanges {
                try? moc.save()
            }
        }
    }
}

#Preview {
    ContentView()
}
