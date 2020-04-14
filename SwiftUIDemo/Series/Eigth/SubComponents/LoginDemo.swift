//
//  LoginDemo.swift
//  SwiftUIDemo
//
//  Created by Kritika Middha on 11/04/20.
//  Copyright © 2020 Ranosys. All rights reserved.
//

import SwiftUI

struct LoginDemo: View {
    @State private var username = ""
    @State private var password = ""
    
    var body: some View {
        ZStack {
            Color(.lightGray)
            .edgesIgnoringSafeArea(.all)

            VStack( spacing: 40) {
                Image("author")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .edgesIgnoringSafeArea(.all)
                
                
                Spacer()
                
                TextField("User name", text: self.$username)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                
                TextField("Password", text: self.$password)
                    .textContentType(.password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Spacer()
                
            }
            .padding(20)
        }
    }
}

struct LoginDemo_Previews: PreviewProvider {
    static var previews: some View {
        LoginDemo()
    }
}
