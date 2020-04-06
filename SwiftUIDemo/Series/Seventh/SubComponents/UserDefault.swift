//
//  UserDefault.swift
//  SwiftUIDemo
//
//  Created by Kritika Middha on 02/04/20.
//  Copyright © 2020 Ranosys. All rights reserved.
//

import SwiftUI

struct UserDefault: View {
    @State private var tapCount = UserDefaults.standard.integer(forKey: "Tap")
    
    var body: some View {
        Button("Tap Count: \(self.tapCount)") {
            self.tapCount += 1
            UserDefaults.standard.set(self.tapCount, forKey: "Tap")
        }
    }
}

struct UserDefault_Previews: PreviewProvider {
    static var previews: some View {
        UserDefault()
    }
}
