//
//  ResizeImage.swift
//  SwiftUIDemo
//
//  Created by Kritika Middha on 06/04/20.
//  Copyright © 2020 Ranosys. All rights reserved.
//

import SwiftUI

struct ResizeImage: View {
    var body: some View {
        
        
        VStack {

            GeometryReader { geo in

                Image("myImage")
                    .resizable()
                    .aspectRatio(contentMode: .fill) // .scaledToFill()
                    .frame(width: geo.size.width)

            }
        }
    }
}

struct ResizeImage_Previews: PreviewProvider {
    static var previews: some View {
        ResizeImage()
    }
}
