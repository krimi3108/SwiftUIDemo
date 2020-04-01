//
//  ControllingAnimation.swift
//  SwiftUIDemo
//
//  Created by Kritika Middha on 31/03/20.
//  Copyright © 2020 Ranosys. All rights reserved.
//

import SwiftUI

struct ControllingAnimation: View {
    @State private var animate = true
    var body: some View {
        Button("Tap Me") {
            self.animate.toggle()
        }
        .frame(width: 200, height: 200)
        .background(animate ? Color.blue : Color.red)
        .animation(.default) //.animation(nil)
        .foregroundColor(.white)
        .clipShape(RoundedRectangle(cornerRadius: animate ? 60 : 0))
        .animation(.easeOut)
        
    }
}

struct ControllingAnimation_Previews: PreviewProvider {
    static var previews: some View {
        ControllingAnimation()
    }
}
