//
//  identical.swift
//  SwiftUIDemo
//
//  Created by Kritika Middha on 02/04/20.
//  Copyright © 2020 Ranosys. All rights reserved.
//

import SwiftUI

struct ExpenseItem: Identifiable, Codable { // If Identifiable is confimed then in forEach row no 49 will be used to identify the list by id. without identifiable, row no. 50 will use
    var id = UUID()
    var name: String
    var type: String
    var amount: Int
}

class Expenses: ObservableObject {
    @Published var items = [ExpenseItem]() {
        didSet {
            let encoder = JSONEncoder()
            if let encode = try? encoder.encode(items) {
                UserDefaults.standard.set(encode, forKey: "Items")
            }
        }
    }
    
    init() {
        if let items = UserDefaults.standard.data(forKey: "Items") {
            
            let decoder = JSONDecoder()
            if let decode = try? decoder.decode([ExpenseItem].self, from: items) {
                self.items = decode
                return
            }
        }
        
        self.items = []
    }
}

struct identical: View {
    @ObservedObject var expenses = Expenses()
    @State private var showingView = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach(expenses.items) { item in
                    // ForEach(expenses.items, id: \.id) { item in
                    
                    HStack {
                        VStack {
                            Text("\(item.name)")
                                .font(.title)
                            Text("\(item.type)")
                        }
                        Spacer()
                        Text("$ \(item.amount)")
                    }
                }
                .onDelete(perform: removeItem)
            }
            .navigationBarTitle("iExpenses")
            .navigationBarItems(trailing:
                Button(action: {
                    self.showingView = true
                    // self.expenses.items.append(ExpenseItem(name: "Text", type: "Personal", amount: 5))
                    
                }) {
                    Image(systemName: "plus")
                }
            )
                
                .sheet(isPresented: $showingView) {
                    AddView(expenses: self.expenses)
            }
        }
        
    }
    
    func removeItem(at indexSet: IndexSet) {
        expenses.items.remove(atOffsets: indexSet)
    }
}

struct identical_Previews: PreviewProvider {
    static var previews: some View {
        identical()
    }
}
