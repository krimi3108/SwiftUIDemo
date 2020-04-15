//
//  orderView.swift
//  SwiftUIDemo
//
//  Created by Kritika Middha on 14/04/20.
//  Copyright © 2020 Ranosys. All rights reserved.
//

import SwiftUI

struct OrderView: View {
    @ObservedObject var order = Order()
    
    var body: some View {
        
        NavigationView {
            Form {
                Section {
                    Picker("Cupcake type", selection: $order.type) {
                        ForEach(0 ..< Order.types.count, id: \.self) {
                            Text("\(Order.types[$0])")
                        }
                    }
                    
                    Stepper(value: $order.quantity, in: 3...20) {
                        Text("Order Quantity: \(order.quantity)")
                    }
                }
                
                Section {
                    Toggle(isOn: $order.specialRequestEnable.animation()) {
                        Text("Require any special request?")
                    }
                    
                    if order.specialRequestEnable {
                        Toggle(isOn: $order.extraFrosting) {
                            Text("Extra Frosting")
                        }
                        
                        Toggle(isOn: $order.addSprinkles) {
                            Text("Add Sprinkles")
                        }
                    }
                    
                }
                
                Section {
                    NavigationLink(destination: AddressView(order: self.order) ) {
                        Text("Delivery Details")
                    }
                }
                .disabled(order.quantity == 0)
            }
            .navigationBarTitle("Cupcake Corners")
        }
    }
}

struct orderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
