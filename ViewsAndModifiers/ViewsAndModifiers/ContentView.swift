//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Lucas  Alcantara  on 30/08/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, World!")
            .padding()
            .background(.red)
            .cornerRadius(40)
            .padding()
            .background(.black)
            .cornerRadius(40)
            .padding()
            .background(.yellow)
            .cornerRadius(50)
            .padding()
            .background(.green)
            .cornerRadius(65)
           
    }
}

#Preview {
    ContentView()
}
