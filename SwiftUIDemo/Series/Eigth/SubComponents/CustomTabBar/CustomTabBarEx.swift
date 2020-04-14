//
//  CustomTabBarEx.swift
//  SwiftUIDemo
//
//  Created by Kritika Middha on 07/04/20.
//  Copyright © 2020 Ranosys. All rights reserved.
//

import SwiftUI

struct CustomTabBarEx: View {
    @ObservedObject var viewRouter = ViewRouter()
    @State private var showPopUp = false
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Spacer()
                if self.viewRouter.currentVIew == "house" {
                    FirstTabView()
                } else {
                    SecondTabView()
                }
                Spacer()
                ZStack {
                    if self.showPopUp {
                        PlusMenu()
                            .offset(y: -geometry.size.height/6)
                    }

                    HStack {
                        Image(systemName: "house")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(20)
                            .frame(width: geometry.size.width/3, height: 70)
                            .foregroundColor(self.viewRouter.currentVIew == "house" ? .black : .gray)
                            .onTapGesture {
                                self.viewRouter.currentVIew = "house"
                        }
                        
                        ZStack {
                            Circle()
                                .foregroundColor(.white)
                                .frame(width: 75, height:75)
                            
                            Image(systemName: "plus.circle.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 75, height: 75)
                                .foregroundColor(.blue)
                                .rotationEffect(Angle(degrees: self.showPopUp ? 90 : 0))
                            
                        }
                        .offset(y: -geometry.size.height/10/2)
                        .onTapGesture {
                            withAnimation {
                                self.showPopUp.toggle()
                            }
                        }
                        
                        
                        Image(systemName: "folder")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(20)
                            .frame(width: geometry.size.width/3, height: 70)
                            .foregroundColor(self.viewRouter.currentVIew == "folder" ? .black : .gray)
                            .onTapGesture {
                                self.viewRouter.currentVIew = "folder"
                        }
                    }
                }
                .background(Color.white)
                .frame(width: geometry.size.width, height: geometry.size.height/10)
            }
            .edgesIgnoringSafeArea(.bottom)
            
        }
    }
}
struct PlusMenu: View {
    var body: some View {
        HStack(spacing: 50) {
            ZStack {
                Circle()
                    .foregroundColor(Color.blue)
                    .frame(width: 70, height: 70)
                Image(systemName: "camera")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(20)
                    .frame(width: 70, height: 70)
                    .foregroundColor(.white)
            }
            ZStack {
                Circle()
                    .foregroundColor(Color.blue)
                    .frame(width: 70, height: 70)
                Image(systemName: "photo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(20)
                    .frame(width: 70, height: 70)
                    .foregroundColor(.white)
            }
        }
        .transition(.scale)

    }
}

struct CustomTabBarEx_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabBarEx()
    }
}
