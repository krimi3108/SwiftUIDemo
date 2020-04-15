//
//  Checkout.swift
//  SwiftUIDemo
//
//  Created by Kritika Middha on 14/04/20.
//  Copyright © 2020 Ranosys. All rights reserved.
//

import SwiftUI

struct Checkout: View {
    @ObservedObject var order: Order
    @State private var message = ""
    @State private var showAlert = false
    
    var body: some View {
        GeometryReader { geo in
            ScrollView {
                VStack(spacing: 20) {
                    Image("author")
                        .resizable()
                        .scaledToFit()
                        .frame(width: geo.size.width)
                    
                    Text("Total amount of item is: $\(self.order.cost, specifier: "%.2f")")
                        .font(.title)
                    
                    Button("Place Order") {
                        self.placeOrder()
                    }
                    .padding()
                }
            }
        }
            
        .navigationBarTitle("Check out", displayMode:  .inline)
        .alert(isPresented: $showAlert) {
            Alert(title: Text("Thank you"), message: Text(message), dismissButton: .default(Text("Ok")))
        }
    }
    
    func placeOrder() {
        guard let encode = try? JSONEncoder().encode(order), let url = URL(string: "https://reqres.in/api/cupcakes") else {
            return print("Invalid URL")
        }
        
        var request = URLRequest(url: url)
        request.allHTTPHeaderFields = ["Content-Type": "application/json"]
        request.httpBody = encode
        request.httpMethod = "POST"
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data else {
                print(error?.localizedDescription ?? "Something went wrong")
                return
            }
            
            //            if let decodeData = try? JSONDecoder().decode(Order.self, from: data) {
            self.message = "Your order for \(self.order.quantity) \(Order.types[self.order.type]) cupcakes is confirmed and is on the way"
            self.showAlert = true
            //            }
            
        }.resume()
    }
}

struct Checkout_Previews: PreviewProvider {
    static var previews: some View {
        Checkout(order: Order())
    }
}
