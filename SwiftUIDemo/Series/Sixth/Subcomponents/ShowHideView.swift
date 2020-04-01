//
//  ShowHideView.swift
//  SwiftUIDemo
//
//  Created by Kritika Middha on 31/03/20.
//  Copyright © 2020 Ranosys. All rights reserved.
//

import SwiftUI

struct ShowHideView: View {
    
    @State private var show = false
    
    var body: some View {
        VStack {
            Button("Tap Me") {
                withAnimation {
                    self.show.toggle()
                }
            }
            
            if show {
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 200, height: 200)
//                    .transition(.scale)
                    .transition(.asymmetric(insertion: .scale, removal: .opacity))
            }
        }
        
        
    }
}

struct ShowHideView_Previews: PreviewProvider {
    static var previews: some View {
        ShowHideView()
    }
}
