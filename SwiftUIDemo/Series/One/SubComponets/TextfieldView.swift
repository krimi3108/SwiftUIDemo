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
        TextField("Amount", text:  $checkAmount)
            .keyboardType(.decimalPad)
        }
        
    }
}

struct TextfieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextfieldView()
    }
}
