//
//  StackView.swift
//  SwiftUIDemo
//
//  Created by Kritika Middha on 24/03/20.
//  Copyright © 2020 Ranosys. All rights reserved.
//

import SwiftUI

struct StackView: View {
    var body: some View {
        
        VStack(spacing: 40) { /// can add uptp 10 elements only
            VStack(alignment: .leading, spacing: 20) {
                Text("Hello Swift UI.....")
                Text("How are you?")
            }
            
//            Spacer()
            
            ZStack {
                Text("           ").background(Color.yellow)
                Text("   ").background(Color.green)
            }
            
//            Spacer()
            
            HStack(spacing: 20) {
                Text("Hello Swift UI")
                Text("Hello Swift UI")
            }
            
        }
    }
}

struct StackView_Previews: PreviewProvider {
    static var previews: some View {
        StackView()
    }
}
