//
//  AddressView.swift
//  SwiftUIDemo
//
//  Created by Kritika Middha on 14/04/20.
//  Copyright © 2020 Ranosys. All rights reserved.
//

import SwiftUI

struct AddressView: View {
    @ObservedObject var order: Order
    
    var body: some View {
        Form {
            Section {
                TextField("Name", text: $order.name)
                TextField("Streat", text: $order.streat)
                TextField("Country", text: $order.country)
                TextField("Zip", text: $order.zip)
            }
            
            Section {
                NavigationLink(destination: Checkout(order: self.order)) {
                    Text("Checkout")
                }
            }
            .disabled(order.name.isEmpty || order.streat.isEmpty || order.country.isEmpty || order.zip.isEmpty)
            
        }
        .navigationBarTitle("Address", displayMode: .inline)
    }
}

struct AddressView_Previews: PreviewProvider {
    static var previews: some View {
        AddressView(order: Order())
    }
}
