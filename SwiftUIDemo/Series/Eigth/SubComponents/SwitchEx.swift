//
//  SwitchViewEx.swift
//  SwiftUIDemo
//
//  Created by Kritika Middha on 06/04/20.
//  Copyright © 2020 Ranosys. All rights reserved.
//

import SwiftUI

struct SwitchEx: View {
    @State private var showGreeting = true
    
    var body: some View {
        VStack {
            Toggle(isOn: $showGreeting) {
                Text("Show Greeting")
            }
            
            if showGreeting {
                Text("Hello....")
            }
        }
        .padding()

    }
}

struct SwitchViewEx_Previews: PreviewProvider {
    static var previews: some View {
        SwitchEx()
    }
}
