//
//  SliderViewEx.swift
//  SwiftUIDemo
//
//  Created by Kritika Middha on 06/04/20.
//  Copyright © 2020 Ranosys. All rights reserved.
//

import SwiftUI

struct SliderViewEx: View {
    @State private var currentValue = 4.0
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "folder")
                    .resizable()
                    .frame(width: 30, height: 30)
                
                Slider(value: $currentValue, in: 1.0...10.0) {_ in
                    if self.currentValue == 5.0 {
                        print("sdfsa")
                        
                    }
                }
                .accentColor(.purple)
                .foregroundColor(.black)
                
                
                Image(systemName: "circle")
                    .resizable()
                    .frame(width: 30, height: 30)
                    
                    .padding()
            }
            Text("Current Value: \(currentValue, specifier: "%.2f")")
        }
    }
}

struct SliderViewEx_Previews: PreviewProvider {
    static var previews: some View {
        SliderViewEx()
    }
}
