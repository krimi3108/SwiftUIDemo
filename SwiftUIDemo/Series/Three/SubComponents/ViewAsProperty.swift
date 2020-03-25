//
//  ViewAsProperty.swift
//  SwiftUIDemo
//
//  Created by Kritika Middha on 25/03/20.
//  Copyright © 2020 Ranosys. All rights reserved.
//

import SwiftUI

struct ViewAsProperty: View {
    
    var moto1: some View { Text("Kritika") }
    let moto2 = Text("Kritika")
    
    var body: some View {
        VStack {
            moto1
                .foregroundColor(.purple)
            moto2
        }
    }
}

struct ViewAsProperty_Previews: PreviewProvider {
    static var previews: some View {
        ViewAsProperty()
    }
}
