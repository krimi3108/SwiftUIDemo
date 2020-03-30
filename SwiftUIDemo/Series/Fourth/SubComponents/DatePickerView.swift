//
//  DatePicker.swift
//  SwiftUIDemo
//
//  Created by Kritika Middha on 27/03/20.
//  Copyright © 2020 Ranosys. All rights reserved.
//

import SwiftUI

struct DatePickerView: View {
    @State private var selectedDate = Date()
    var body: some View {
        
        // A Date picker with both date and time
        DatePicker("Please select your date", selection: $selectedDate, displayedComponents: .hourAndMinute)
         .padding()
        
    
        /// A Date picker with date only
        /*
         DatePicker("", selection: $selectedDate, displayedComponents: .date)
         .labelsHidden() // Remove the Label
         */
        
        
        
        ///  A Date picker with time only &
        ///  Can enclose to form
        /*
         Form {
         DatePicker("Please select your date", selection: $selectedDate, in: ...Date() )
         }
        */
        
        /// let set the range
        /*
         //        let now = Date()
         //        let tomorrow = Date().addingTimeInterval(86400)
         //        let range = now ... tomorrow
         DatePicker("select your date", selection: $selectedDate, in: ...Date()) // or Date()...
         .labelsHidden()
         */
    }
}

struct DatePicker_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerView()
    }
}
