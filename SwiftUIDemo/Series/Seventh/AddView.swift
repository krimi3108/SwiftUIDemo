//
//  AddView.swift
//  SwiftUIDemo
//
//  Created by Kritika Middha on 06/04/20.
//  Copyright © 2020 Ranosys. All rights reserved.
//

import SwiftUI

struct AddView: View {
    @ObservedObject var expenses: Expenses
    
    @Environment(\.presentationMode) var presentmode
    
    @State private var name = ""
    @State private var type = "Personal"
    @State private var amount =  ""
    static let types = ["Personal", "Business"]
    
    var body: some View {
        NavigationView {
            Form {
                TextField("Enter Name", text: $name )
                

                Picker("Select Type", selection: $type) {
                    ForEach(AddView.types, id: \.self) {
                        Text($0)
                    }
                }
                
                TextField("Enter Amount", text: $amount)
                    .keyboardType(.numberPad)
                
            }
            .navigationBarTitle("Add new expense")
            .navigationBarItems(trailing: Button("save"){
                if let actualAmount = Int(self.amount) {
                    let item = ExpenseItem(name: self.name, type: self.type, amount: actualAmount)
                    self.expenses.items.append(item)
                    self.presentmode.wrappedValue.dismiss()
                }
            })
        }
        
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddView(expenses: Expenses())
    }
}
