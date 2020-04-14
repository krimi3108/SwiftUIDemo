//
//  ParallexEffect.swift
//  SwiftUIDemo
//
//  Created by Kritika Middha on 09/04/20.
//  Copyright © 2020 Ranosys. All rights reserved.
//

import SwiftUI

struct MyImage: View {
    var imageName: String
    
    var body: some View {
        Image(imageName)
        .resizable()
        .aspectRatio(contentMode: .fill)
    }
}

struct ParallexEffect: View {
    
    let articleContent =

    """
    Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.
    At vero eos et accusam et justo duo dolores et ea rebum.
    Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.
    At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit ametLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.
    At vero eos et accusam et justo duo dolores et ea rebum.
    Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.
    At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.
    """

    var body: some View {
        ScrollView {
            GeometryReader { geometry in
                VStack {
                    if geometry.frame(in: .global).minY <= 0 {
                        MyImage(imageName: "landingHeader")
                            .frame(width: geometry.size.width, height: geometry.size.height)
                        // .offset(y: geometry.frame(in: .global).minY/9)
                        // .clipped()
                    } else {
                        MyImage(imageName: "landingHeader")
                            .frame(width: geometry.size.width, height: geometry.size.height + geometry.frame(in: .global).minY)
                            // .clipped()
                            .offset(y: -geometry.frame(in: .global).minY)
                        
                        
                    }
                }
                
            }
            .frame(height: 400)
            
            VStack(alignment: .leading) {
                HStack {
                    Image("author")
                    .resizable()
                        .aspectRatio(contentMode: .fill)
                    .frame(width: 60, height: 60)
                    .clipped()
                    .cornerRadius(10)
                   
                    VStack {
                        Text("Artical by")
                            .font(.system(size: 15))
                            .foregroundColor(.gray)
                        
                        Text("Jhon Deo")
                            .font(.system(size: 15))
                    }
                }
                .padding(.top, 20)
                
                
                Text("Lorem ipsum dolor sit amet")
                    .font(.system(size: 30))
                    .lineLimit(nil)
                    .padding(.top, 10)
                
                
                Text("3 min read • 22. November 2019")
                    .font(.system(size: 15))
                    .foregroundColor(.gray)
                    .padding([.top, .bottom], 10)

                Text(articleContent)
            }
        .frame(width: 350)
        }
        .edgesIgnoringSafeArea(.top)
        
    }
}

struct ParallexEffect_Previews: PreviewProvider {
    static var previews: some View {
        ParallexEffect()
    }
}
