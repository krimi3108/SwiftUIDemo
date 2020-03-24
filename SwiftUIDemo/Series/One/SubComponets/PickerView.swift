//
//  PickerView.swift
//  SwiftUIDemo
//
//  Created by Kritika Middha on 23/03/20.
//  Copyright © 2020 Ranosys. All rights reserved.
//

import SwiftUI

struct PickerView: View {
    let students = ["Tom", "Harry", "Ron"]
    
    @State private var selectecStudent = "Harry"
    var body: some View {
        VStack {
            /// PickerView with default behaviour
            Picker("Select your name", selection: $selectecStudent) {
                ForEach(0 ..< students.count) {
                    Text("\(self.students[$0])")
                }
            }
            
            /// PickerView with Segment
            Picker("Select your name", selection: $selectecStudent) {
                ForEach(0 ..< students.count) {
                    Text("\(self.students[$0])")
                }
            }
            .pickerStyle(SegmentedPickerStyle())
        }
    }
}

struct PickerView_Previews: PreviewProvider {
    static var previews: some View {
        PickerView()
    }
}
