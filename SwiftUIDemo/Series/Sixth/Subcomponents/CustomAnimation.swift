//
//  CustomAnimation.swift
//  SwiftUIDemo
//
//  Created by Kritika Middha on 30/03/20.
//  Copyright © 2020 Ranosys. All rights reserved.
//

import SwiftUI



struct CustomAnimation: View {
    @State private var animationAmmount: CGFloat = 1
    
    var body: some View {
        /*
         Button("Tap Me") {
         self.animationAmmount += 1
         }
         .buttonStyle() // instead of duplicate the modifier, on the top view have created Custom Modifiers.
         .scaleEffect(animationAmmount)
         // .animation(.easeOut)
         // .animation(.interpolatingSpring(stiffness: 50, damping: 1))
         // .animation(.easeOut(duration: 2))
         .animation(
         Animation.easeOut(duration: 2)
         // .delay(1)
         // .repeatCount(3, autoreverses: true)
         .repeatForever(autoreverses: true)
         )
         */
        
        
        Button("Another Style") {
            // Do nothing..
        }
        .buttonStyle() // instead of duplicate the modifier, on the top view have created Custom Modifiers.
            
        .overlay (
            Circle()
                .stroke(Color.red)
                .scaleEffect(animationAmmount)
                .opacity(Double(2 - animationAmmount))
                .animation (
                    Animation.easeOut(duration: 2)
                    .repeatForever(autoreverses: false)
            )
        )
            .onAppear {
                self.animationAmmount = 2
        }
    }
}

struct CustomAnimation_Previews: PreviewProvider {
    static var previews: some View {
        AnimationView()
    }
}
