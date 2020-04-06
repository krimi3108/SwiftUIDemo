//
//  ObserableView.swift
//  SwiftUIDemo
//
//  Created by Kritika Middha on 01/04/20.
//  Copyright © 2020 Ranosys. All rights reserved.
//

import SwiftUI
class User: ObservableObject {
    @Published var firstName = "Kritika"
    @Published var lastName = "Middha"
}
struct ObserableView: View {
    @ObservedObject private var user = User()
    var body: some View {
        VStack {
            Text("Fist name: \(user.firstName), Last name: \(user.lastName)")
            
            TextField("Enter your first name", text: $user.firstName)
            TextField("Enter your last name", text: $user.lastName)
        }
    }
}

struct ObserableView_Previews: PreviewProvider {
    static var previews: some View {
        ObserableView()
    }
}
