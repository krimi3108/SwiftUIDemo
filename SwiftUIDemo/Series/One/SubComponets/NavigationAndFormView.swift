//
//  NavigationAndFormView.swift
//  SwiftUIDemo
//
//  Created by Kritika Middha on 23/03/20.
//  Copyright © 2020 Ranosys. All rights reserved.
//

import SwiftUI

struct NavigationAndFormView: View {
    /// Because we are working on sturct and we want to change `tapcount` variable due to struct we can achieve and mutating keyword is also not allow,
    /// So for that we have to make the property @State which capture the changes in property and update accordingly.
    @State private var tapCount = 0
    
    var body: some View {
        
        NavigationView {
            Form {
                
                /// Section with only a single label
                Section {
                    Text("Hello World")
                    
                    Text("Colored ")
                        .foregroundColor(.red)
                    +
                    Text("SwifUI ")
                        .foregroundColor(.green)
                    +
                    Text("Text")
                        .foregroundColor(.blue)

                }
                
                /// Section with only a Button and header text
                Section(header: (Text("This section is with header"))) {
                    Button("TapCount: \(tapCount)") {
                        self.tapCount += 1
                    }
                }
                
                /// Section to demonstrate the`ForEach` loop
                Section {
                    ForEach(1 ..< 50) {
                        Text("Row \($0)")
                    }
                }
                
            .navigationBarTitle("Series one")
                
            }
        }
        
    }
}

struct NavigationAndFormView_Previews: PreviewProvider {
    static var previews: some View {
//        NavigationAndFormView()
        
        Group {
            NavigationAndFormView()
                .environment(\.sizeCategory, .accessibilityExtraExtraExtraLarge)
            NavigationAndFormView()
                .environment(\.colorScheme, .dark)
            NavigationView {
                NavigationAndFormView()
            }
        }

    }
}
