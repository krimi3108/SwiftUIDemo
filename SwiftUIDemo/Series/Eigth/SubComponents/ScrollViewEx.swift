//
//  ScrollViewEx.swift
//  SwiftUIDemo
//
//  Created by Kritika Middha on 06/04/20.
//  Copyright © 2020 Ranosys. All rights reserved.
//

import SwiftUI

struct ScrollViewEx: View {
    var body: some View {

        ScrollView(.vertical) {
            VStack(alignment: .leading, spacing: 10) {
                ForEach(0..<100) {
                    Text("Item \($0)")
                        .font(.title)
                }
            }
            .frame(maxWidth: .infinity)
        }
    
    }
}

struct ScrollViewEx_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewEx()
    }
}
