//
//  Series_One_Demo.swift
//  SwiftUIDemo
//
//  Created by Kritika Middha on 23/03/20.
//  Copyright © 2020 Ranosys. All rights reserved.
//

import SwiftUI

struct Series_One_Demo: View {
    @State private var checkAmount = ""
    @State private var numberOfpeople = 2
    @State private var tipNumber = 2

    let tipArr = [10, 15, 20, 25, 30]
    
    var amountPerPerson: Double {
        let orderAmount = Double(checkAmount) ?? 0
        let peopleCount = Double(numberOfpeople + 2)
        let tipSelection = Double(tipArr[tipNumber])
        
        let tipValue = orderAmount * 100 / tipSelection
        let grandTotal = orderAmount + tipValue
        
        return grandTotal / peopleCount
    }
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Enter your amount", text: $checkAmount)
                        .keyboardType(.decimalPad)
                    
                    Picker("Number Of people", selection: $numberOfpeople) {
                        ForEach(2 ..< 100) {
                            Text("Number Of people \($0)")
                        }
                    }
                }
                
                Section(header: Text("How may tip you want to leave?")) {
                    Picker("Tip Percetage", selection: $tipNumber) {
                        ForEach(0 ..< tipArr.count) {
                            Text("\(self.tipArr[$0])%")
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
                
                Section {
                    Text("$\(amountPerPerson, specifier: "%.2f")")
                }
            }
            .navigationBarTitle("Series One")
        }
    }
}

struct Series_One_Demo_Previews: PreviewProvider {
    static var previews: some View {
        Series_One_Demo()
    }
}
