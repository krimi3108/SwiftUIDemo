//
//  CustomModifier.swift
//  SwiftUIDemo
//
//  Created by Kritika Middha on 25/03/20.
//  Copyright © 2020 Ranosys. All rights reserved.
//

import SwiftUI

struct MyTitle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .padding()
            .foregroundColor(.purple)
            .background(Color.yellow)
            .clipShape(RoundedRectangle(cornerRadius: 10))
        
    }
}


struct WaterMark: ViewModifier {
    var text: String
    
    func body(content: Content) -> some View {
        
        ZStack(alignment: .bottomTrailing) {
            content

            Text(text)
                .font(.caption)
                .foregroundColor(.white)
                .padding()
        }
    }
}

extension View {
    func myTitleStyle() -> some View {
        self.modifier(MyTitle().self)
    }
    
    func waterMarked(text: String) -> some View {
        self.modifier(WaterMark(text: text))
    }
}


struct CustomModifier: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, .black]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
                .waterMarked(text: "SwiftUI Demo")
            
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                //        .modifier(MyTitle()) // or can use extension function to call modifier.
                .myTitleStyle()
        }
    }
}

struct CustomModifier_Previews: PreviewProvider {
    static var previews: some View {
        CustomModifier()
    }
}
