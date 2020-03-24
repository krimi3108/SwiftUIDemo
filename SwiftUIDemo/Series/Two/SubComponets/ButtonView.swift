//
//  ButtonView.swift
//  SwiftUIDemo
//
//  Created by Kritika Middha on 24/03/20.
//  Copyright © 2020 Ranosys. All rights reserved.
//

import SwiftUI

struct ButtonView: View {
    var body: some View {
        
        /// The simplest way to create the button
        VStack(spacing: 20) {
            Button("Tap Me") {
                print("Button was Tapped")
            }
            .foregroundColor(.black)
            
            
            /// Another way to create the button
            Button(action: {
                print("Button was Tapped")
            }) {
                Text("Another Button").foregroundColor(.purple).font(.system(size: 22, weight: .heavy, design: .serif))
            }
            
            /// Customize the button
            Button(action: {
                print("Button was Tapped")
            }) {
                ZStack {
                    Color.yellow.frame(width: 100, height: 50)
                    HStack(spacing: 10) {
                        Text("Edit").foregroundColor(.red)
                        Image(systemName: "pencil").foregroundColor(.red)
                    }
                }
            }
            
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}
