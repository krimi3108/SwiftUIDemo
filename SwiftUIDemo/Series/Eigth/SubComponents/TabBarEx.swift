//
//  TabBarEx.swift
//  SwiftUIDemo
//
//  Created by Kritika Middha on 07/04/20.
//  Copyright © 2020 Ranosys. All rights reserved.
//

import SwiftUI
struct FirstTabView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.red, .black]), startPoint: .top, endPoint: .bottom)
            
            Text("Welcome to Dashboard !")
                .foregroundColor(.white)
                .font(.title)
        }
        
    }
}
struct SecondTabView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.red, .blue]), startPoint: .topLeading, endPoint: .bottomTrailing)
            Text("Oops! No file found")
                .foregroundColor(.white)
                .font(.title)
        }
    }
}


struct TabBarEx: View {
    var body: some View {
        TabView {
            FirstTabView()
                .tabItem {
                    Image(systemName: "house")
                    Text("DashBoad")
                        .foregroundColor(.orange)
                    
            }
            
            SecondTabView()
                .tabItem {
                    Image(systemName: "folder")
                    Text("Files")
            }
            
            Text("Third")
                .tabItem {
                    Image(systemName: "gear")
                    Text("Setting")
                    
            }
        }
        
    }
}

struct TabBarEx_Previews: PreviewProvider {
    static var previews: some View {
        TabBarEx()
    }
}
