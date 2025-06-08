//
//  ContentView.swift
//  Guess The Flag
//
//  Created by Lucas  Alcantara  on 07/06/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [.black, .mint]), startPoint: .top, endPoint: .bottom)
            .ignoresSafeArea(edges: .all)
    }
}

#Preview {
    ContentView()
}
