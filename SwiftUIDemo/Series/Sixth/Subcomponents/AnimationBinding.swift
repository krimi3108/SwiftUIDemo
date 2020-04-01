//
//  AnimationBinding.swift
//  SwiftUIDemo
//
//  Created by Kritika Middha on 30/03/20.
//  Copyright © 2020 Ranosys. All rights reserved.
//

import SwiftUI

struct AnimationBinding: View {
    @State private var animationAmount: CGFloat = 1
    
    var body: some View {
        
        VStack {
            
            Stepper("Scale Amount", value: $animationAmount.animation(
                Animation.easeOut(duration: 1)
            ), in: 1...10)
            
            Spacer()
            
            Button("Tap Me") {
                self.animationAmount += 1
            }
            .buttonStyle()
            .scaleEffect(animationAmount)
        }
    }
}

struct AnimationBinding_Previews: PreviewProvider {
    static var previews: some View {
        AnimationBinding()
    }
}
