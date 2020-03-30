//
//  TextfieldView.swift
//  SwiftUIDemo
//
//  Created by Kritika Middha on 23/03/20.
//  Copyright © 2020 Ranosys. All rights reserved.
//

import SwiftUI

struct TextfieldView: View {
    @State private var checkAmount = ""
    var body: some View {
    
        Form {
            // textfield with @state binding
            TextField("Amount", text:  $checkAmount)
                .keyboardType(.decimalPad)

            // textfield with constant binding
            TextField("Example placeholder", text: .constant("Hello"))
                .textFieldStyle(RoundedBorderTextFieldStyle())
        }
    }
}

struct TextfieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextfieldView()
    }
}
