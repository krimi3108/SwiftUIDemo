//
//  Series_Two_Demo.swift
//  SwiftUIDemo
//
//  Created by Kritika Middha on 24/03/20.
//  Copyright © 2020 Ranosys. All rights reserved.
//

import SwiftUI

struct Series_Two_Demo: View {
    @State private var showingScore = false
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, .black]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 20) {

                Text("Tap on flag ...")
                    .foregroundColor(.white)
                    .font(.system(size: 22))
                
                Text("Flag")
                    .foregroundColor(.white)
                    .font(.system(size: 20, weight: .black, design: .rounded))
                
                ForEach(0 ..< 2) { number in
                    Button(action: {
                        self.tapOnFlag(number)
                    }) {
                        Image("india-flag")
                            .renderingMode(.original)
                            .clipShape(Circle())
                            .shadow(color: .yellow, radius: CGFloat(2.0))
                            .overlay(Circle().stroke(Color.white, lineWidth: 3))
                        
                    }
                    
                }
                Spacer()
                
            }
        }
        .alert(isPresented: $showingScore) { () -> Alert in
            Alert(title: Text("Showing Scroe"), message: Text("Your score is??"), dismissButton: .default(Text("ask Question"), action: {
                self.askQuestion()
            }))
        }
    }
    
    func tapOnFlag(_ sender: Any) {
        
    }
    func askQuestion() {
        
        
    }
}

struct Series_Two_Demo_Previews: PreviewProvider {
    static var previews: some View {
        Series_Two_Demo()
    }
}
