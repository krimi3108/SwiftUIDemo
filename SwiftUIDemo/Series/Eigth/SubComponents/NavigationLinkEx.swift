//
//  NavigationLinkEx.swift
//  SwiftUIDemo
//
//  Created by Kritika Middha on 06/04/20.
//  Copyright © 2020 Ranosys. All rights reserved.
//

import SwiftUI

struct NavigationLinkEx: View {
    var body: some View {
        NavigationView {
            List(0..<100) { row in
                NavigationLink(destination: Text("Detail \(row)")) {
                    Text("Row\(row)")
                }
            }
        .navigationBarTitle("Navigation Link Example")
        }
    }
}

struct NavigationLinkEx_Previews: PreviewProvider {
    static var previews: some View {
        NavigationLinkEx()
    }
}
