//
//  AdressView.swift
//  Cupcake Corner
//
//  Created by Lucas  Alcantara  on 22/11/25.
//

import SwiftUI

struct AdressView: View {
    @ObservedObject var order: Order
    
    var body: some View {
        Form {
            Section {
                TextField("Name", text: $order.name)
                TextField("Street address", text: $order.streetAddress)
                TextField("City", text: $order.city)
                TextField("Zip", text: $order.zip)
            }
            
            Section {
                NavigationLink {
                    CheckoutView(order: order)
                } label: {
                    Text("Check out")
                }
            }
            .disabled(order.hasValidAddress == false)
        }
        .navigationTitle("Delivery details")
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

#Preview {
    NavigationView {
        AdressView(order: Order())
            .preferredColorScheme(.dark)
    }
}
