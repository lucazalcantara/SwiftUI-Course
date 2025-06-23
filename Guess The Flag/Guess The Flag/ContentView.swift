//
//  ContentView.swift
//  Guess The Flag
//
//  Created by Lucas  Alcantara  on 07/06/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showingAlert = false
    
    var body: some View {
        Button("Show me") {
            showingAlert = true
        }
        .foregroundStyle(.blue)
        .border(Color.green)
        .alert("Here is the alert", isPresented: $showingAlert) {
            Button("Dismiss", role: .cancel){}
        }
    }
}

#Preview {
    ContentView()
}
