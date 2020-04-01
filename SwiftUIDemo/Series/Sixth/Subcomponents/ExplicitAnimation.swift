//
//  ExpicitilyAnimation.swift
//  SwiftUIDemo
//
//  Created by Kritika Middha on 31/03/20.
//  Copyright © 2020 Ranosys. All rights reserved.
//

import SwiftUI

struct ExplicitAnimation: View {
    @State private var animationAmount: Double = 0
    var body: some View {
        Button("Tap Me") {
            withAnimation(.interpolatingSpring(stiffness: 5, damping: 1)) { // excipit animation
                self.animationAmount = 360
            }
        }
        .buttonStyle()
        .rotation3DEffect(.degrees(animationAmount), axis: (x: 0.0, y: 1.0, z: 0.0)) // change the value of each axis and see the animation effect differently.
        
    }
}

struct ExplicitAnimation_Previews: PreviewProvider {
    static var previews: some View {
        ExplicitAnimation()
    }
}
