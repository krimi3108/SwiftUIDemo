//
//  SlideView.swift
//  SwiftUIDemo
//
//  Created by Kritika Middha on 09/04/20.
//  Copyright © 2020 Ranosys. All rights reserved.
//

import SwiftUI

struct menuItem: View {
    var imageName: String
    var itemName: String
    
    var body: some View {
        HStack {
            Image(systemName: imageName)
                .foregroundColor(.gray)
                .imageScale(.large)
            
            Text(itemName)
                .foregroundColor(.gray)
                .font(.headline)
        }
        .padding(.top, 30)
    }
}

struct MenuView: View {
    var body: some View {
        VStack(alignment: .leading) {
            menuItem(imageName: "person", itemName: "Profile")
                .padding(.top, 70)

            menuItem(imageName: "envelope", itemName: "Messages")

            menuItem(imageName: "gear", itemName: "Settings")
            Spacer()
            
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color(red: 32/255, green: 32/255, blue: 32/255))
        .edgesIgnoringSafeArea(.all)
        
        
    }
}

struct SlideView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
