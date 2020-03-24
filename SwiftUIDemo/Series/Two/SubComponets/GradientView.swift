//
//  GradientView.swift
//  SwiftUIDemo
//
//  Created by Kritika Middha on 24/03/20.
//  Copyright © 2020 Ranosys. All rights reserved.
//

import SwiftUI

struct GradientView: View {
    var body: some View {
        
        ZStack {
            //        LinearGradient(gradient: Gradient(colors: [.white, .black]), startPoint: .top, endPoint: .bottom)
            
            RadialGradient(gradient: Gradient(colors: [.red, .blue]), center: .bottom, startRadius: 20, endRadius: 800)
            //        RadialGradient(gradient: Gradient(colors: [.red, .blue]), center: .center, startRadius: 20, endRadius: 200)
            
            //            AngularGradient(gradient: Gradient(colors: [ .red, .yellow, .green, .blue, .purple, .red]), center: .center)
            
            Text("Good Morning ... !")
                .foregroundColor(Color.white)
                .font(.system(size: 30, weight: .semibold, design: .serif))
            //                .font(.system(.subheadline, design: .serif))
        }
    }
}

struct GradientView_Previews: PreviewProvider {
    static var previews: some View {
        GradientView()
    }
}
