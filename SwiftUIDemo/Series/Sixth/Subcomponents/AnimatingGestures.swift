//
//  AnimatingGestures.swift
//  SwiftUIDemo
//
//  Created by Kritika Middha on 31/03/20.
//  Copyright © 2020 Ranosys. All rights reserved.
//

import SwiftUI

struct AnimatingGestures: View {
    let letters = Array("Hello SwiftUI")
    
    @State private var dragAmount: CGSize = .zero
    @State private var enable = false
    
    var body: some View {
        /*
         LinearGradient(gradient: Gradient(colors: [.blue, .black]), startPoint: .topLeading, endPoint: .bottomTrailing)
         .frame(width: 200, height: 200)
         .clipShape(RoundedRectangle(cornerRadius: 10))
         .offset(dragAmount)
         .gesture(
         DragGesture()
         .onChanged{self.dragAmount = $0.translation}
         .onEnded { _ in
         withAnimation(.spring()) { // excipit animation
         self.dragAmount = .zero
         }
         }
         )
         //            .animation(.spring()) // implicit animation
         */
        HStack(spacing: 0) {
            ForEach(0 ..< letters.count) { num in
                Text(String(self.letters[num]))
                    .padding(5)
                    .font(.title)
                    .background(self.enable ? Color.blue : Color.red)
                    .offset(self.dragAmount)
                    .animation(Animation.default.delay(Double(num / 20)))
            }
        }
        .gesture(
            DragGesture()
                .onChanged{ self.dragAmount = $0.translation }
                .onEnded { _ in
                    self.dragAmount = .zero
                    self.enable.toggle()
            }
        )
    }
}


struct AnimatingGestures_Previews: PreviewProvider {
    static var previews: some View {
        AnimatingGestures()
    }
}
