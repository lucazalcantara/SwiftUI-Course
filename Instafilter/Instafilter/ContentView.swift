//
//  ContentView.swift
//  Instafilter
//
//  Created by Lucas  Alcantara  on 28/11/25.
//

import SwiftUI

struct ContentView: View {
    @State private var image: Image?
    @State private var showingImagePicker = false
    
    var body: some View {
        VStack {
            image?
                .resizable()
                .scaledToFit()
            
            Button("Select Image") {
                showingImagePicker = true
            }
        }
        .sheet(isPresented: $showingImagePicker) {
            ImagePicker()
        }
    }
}
#Preview {
    ContentView()
}
