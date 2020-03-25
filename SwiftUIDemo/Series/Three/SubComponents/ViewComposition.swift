//
//  ViewComposition.swift
//  SwiftUIDemo
//
//  Created by Kritika Middha on 25/03/20.
//  Copyright © 2020 Ranosys. All rights reserved.
//

import SwiftUI

struct CapsuleText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .padding()
            .font(.system(size: 20))
            .foregroundColor(.purple)
            .clipShape(Capsule())
    }
}

struct ViewComposition: View {
    var body: some View {
        VStack {
            CapsuleText(text: "Hello")
            CapsuleText(text: "Swift UI")
        }
        .background(Color.yellow)
    }
}

struct ViewComposition_Previews: PreviewProvider {
    static var previews: some View {
        ViewComposition()
    }
}
