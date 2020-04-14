//
//  SlideMenu.swift
//  SwiftUIDemo
//
//  Created by Kritika Middha on 09/04/20.
//  Copyright © 2020 Ranosys. All rights reserved.
//

import SwiftUI

struct KSlideMenu: View {
    @State private var showMenu = false
    
    var body: some View {
        
        let drag = DragGesture()
            .onEnded {
                if $0.translation.width < -100 {
                    withAnimation {
                        self.showMenu = false
                    }
                }
        }
        
        return NavigationView {
            GeometryReader { geometry in
                MainView(showMenu: self.$showMenu)
                    .frame(width: geometry.size.width, height: geometry.size.height)
                    .offset(x: self.showMenu ? geometry.size.width/2 : 0)
                    .disabled(self.showMenu ? true : false)
                
                if self.showMenu {
                    MenuView()
                        .frame(width: geometry.size.width/2)
                        .transition(.move(edge: .leading)) // Navigation for go back to leading side.
                    
                }
            }
            .navigationBarTitle("Side Menu", displayMode:  .inline)
            .navigationBarItems(leading: (
                Button(action: {
                    withAnimation {
                        self.showMenu.toggle()
                    }
                }) {
                    Image(systemName: "line.horizontal.3")
                        .imageScale(.large)
                    
                }
                
            ))
        }
        .gesture(drag)
        
    }
}

struct MainView: View {
    @Binding var showMenu: Bool
    
    var body: some View {
        
        Button(action: {
            withAnimation {
                self.showMenu = true
            }
            
        }) {
            HStack(spacing: 10) {
                Image("")
                
                Text("Side Menu")
            }
        }
    }
    
}
struct SlideMenu_Previews: PreviewProvider {
    static var previews: some View {
        KSlideMenu()
    }
}
