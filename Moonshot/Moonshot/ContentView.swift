//
//  ContentView.swift
//  Moonshot
//
//  Created by Lucas  Alcantara  on 13/09/25.
//

import SwiftUI

struct ContentView: View {
    let astronauts = Bundle.main.decode("astronauts.json")
    
    var body: some View {
        Text("\(astronauts.count)")
            .padding()
            .fontWeight(.bold)
            .frame(maxWidth: 80, maxHeight: 80)
            .background(.yellow)
    }
}

#Preview {
    ContentView()
}
