//
//  PathEx.swift
//  SwiftUIDemo
//
//  Created by Kritika Middha on 13/04/20.
//  Copyright © 2020 Ranosys. All rights reserved.
//

import SwiftUI

struct PathEx: View {
    var body: some View {
        Path { path in
            path.move(to: CGPoint(x: 200, y: 100))
            path.addLine(to: CGPoint(x: 100, y: 300))
            path.addLine(to: CGPoint(x: 300, y: 300))
            path.addLine(to: CGPoint(x: 200, y: 100))
            path.addLine(to: CGPoint(x: 100, y: 300))

        }
        .stroke(Color.blue, lineWidth: 10)
        
    }
}

struct PathEx_Previews: PreviewProvider {
    static var previews: some View {
        PathEx()
    }
}
