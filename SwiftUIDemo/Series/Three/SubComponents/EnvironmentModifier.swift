//
//  EnvironmentModifier.swift
//  SwiftUIDemo
//
//  Created by Kritika Middha on 25/03/20.
//  Copyright © 2020 Ranosys. All rights reserved.
//

import SwiftUI

///The modifier which apply to a group of objects(Stack/ Group) call Environment modifiers, like add font/foregroundColor modifier to Stack/ Group instead to apply modifier to individual group.`
struct EnvironmentModifier: View {
    var body: some View {
        VStack {
            Text("Hello").background(Color.yellow)
            Text("World").background(Color.green)
        }
        .font(.system(size: 20)) //  This modifier call Environment modifier
    }
}

struct EnvironmentModifier_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentModifier()
    }
}
