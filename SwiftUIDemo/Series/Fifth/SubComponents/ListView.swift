//
//  ListView.swift
//  SwiftUIDemo
//
//  Created by Kritika Middha on 27/03/20.
//  Copyright © 2020 Ranosys. All rights reserved.
//

import SwiftUI

struct ListView: View {
    let students = ["Tom", "Harry", "Ron", "lily", "Tim"]
    var body: some View {
        
        /*
         List {
         Section(header: Text("Section 1")) {
         
         Text("Static row 1")
         Text("Static row 2")
         }
         Section(header: Text("Section 2")) {
         ForEach(1..<5) {
         Text("Daynaic row \($0)")
         
         }
         }
         Section(header: Text("Section 3")) {
         Text("Static row 3")
         Text("Static row 4")
         
         }
         }
         */
        
        /*
         List(0..<5) {
         Text("Daynamic Row \($0)")
         }
         */
        
        
        List(students, id: \.self) { number in
            ZStack(alignment: .leading) {
                LinearGradient(gradient: Gradient(colors: [.blue, .black]), startPoint: .top, endPoint: .bottom)
                Text(number)
                    .frame(height: 100)
                    .foregroundColor(.white)
            }
        }
            
            
            /*
             List {
             ForEach(students, id: \.self) {
             Text($0)
             }
             }
             */
            .listStyle(GroupedListStyle())
        
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
