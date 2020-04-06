//
//  OnDelete.swift
//  SwiftUIDemo
//
//  Created by Kritika Middha on 02/04/20.
//  Copyright © 2020 Ranosys. All rights reserved.
//

import SwiftUI

struct OnDelete: View {
    @State private var listArr = [Int]()
    @State private var number = 1
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(listArr, id: \.self) {
                        Text("\($0)")
                    }
                    .onDelete(perform: removeValue)
                }
                
                Button("Add number") {
                    self.listArr.append(self.number)
                    self.number += 1
                }
                
            }
            .navigationBarTitle("On Delete Example")
            .navigationBarItems(leading: EditButton())
        }
        
    }
    
    func removeValue(_ indexSet: IndexSet) {
        self.listArr.remove(atOffsets: indexSet)
    }
}

struct OnDelete_Previews: PreviewProvider {
    static var previews: some View {
        OnDelete()
    }
}
