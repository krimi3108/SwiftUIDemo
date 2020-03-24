//
//  ColorWithStack.swift
//  SwiftUIDemo
//
//  Created by Kritika Middha on 24/03/20.
//  Copyright © 2020 Ranosys. All rights reserved.
//

import SwiftUI

struct ColorWithStack: View {
    var body: some View {
        
        ZStack {
            // Color.red
            // Color.red.edgesIgnoringSafeArea(.all)
            // Color.red.edgesIgnoringSafeArea(.vertical) // will work in landscape
            Color.purple.frame(width: 200, height: 200)
            
            Text("Hello Kritika").foregroundColor(Color.white).font(.system(.largeTitle))
            
        }
        
    }
}

struct ColorWithStack_Previews: PreviewProvider {
    static var previews: some View {
        ColorWithStack()
    }
}
