//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Lucas  Alcantara  on 30/08/25.
//

import SwiftUI

struct CustomText: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.title)
            .padding()
            .foregroundColor(.yellow)
            .background(.black)
            .cornerRadius(20)
    }
}

extension View {
    func defaultStyle() -> some View {
        modifier(CustomText())
    }
}
struct ContentView: View {
    var body: some View {
        Text("Mãezinha")
            .defaultStyle()
            
    }
}

#Preview {
    ContentView()
}
