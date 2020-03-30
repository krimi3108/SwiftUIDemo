//
//  SwiftUIView.swift
//  SwiftUIDemo
//
//  Created by Kritika Middha on 27/03/20.
//  Copyright © 2020 Ranosys. All rights reserved.
//

import SwiftUI

struct StepperView: View {
    @State private var workingHours = 8.0
    
    var body: some View {
        Stepper(value: $workingHours, in: 3.30...9.15, step: 0.15) {
            Text("\(workingHours, specifier: "%.2f")")
            }
        .padding()
        
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        StepperView()
    }
}
