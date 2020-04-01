//
//  SwiftUIView.swift
//  SwiftUIDemo
//
//  Created by Kritika Middha on 30/03/20.
//  Copyright © 2020 Ranosys. All rights reserved.
//

import SwiftUI

struct MyButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(50)
            .background(Color.red)
            .foregroundColor(.white)
            .clipShape(Circle())
        
    }
}

extension View {
    func buttonStyle() -> some View {
        self.modifier(MyButtonModifier())
    }
}

struct AnimationView: View {
    @State private var animationAmmount: CGFloat = 1
    
    var body: some View {
        Button("Tap Me") {
            self.animationAmmount += 1
        }
        .buttonStyle()
        .scaleEffect(animationAmmount)
        .animation(.default)
    }
}

struct AnimationView_Previews: PreviewProvider {
    static var previews: some View {
        AnimationView()
    }
}
