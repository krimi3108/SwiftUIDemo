//
//  ArchivingData.swift
//  SwiftUIDemo
//
//  Created by Kritika Middha on 02/04/20.
//  Copyright © 2020 Ranosys. All rights reserved.
//

import SwiftUI

struct Employee: Codable {
    var firstName: String?
    var lastName: String?
}
struct ArchivingData: View {
    @State private var employee = Employee()
    
    init() {
        getStoredData()
    }
    
    var body: some View {
        VStack(spacing: 20) {
            
            Text("First Name: \(employee.firstName ?? " "), lastName: \(employee.lastName ?? " ")")
            
            Button("Save Data") {
                self.employee = Employee(firstName: "kritika", lastName: "Middha")
                if let data = try? JSONEncoder().encode(self.employee) {
                    UserDefaults.standard.set(data, forKey: "EmpData")
                }
            }
        }
    }
    
    func getStoredData() {
        guard let empData = UserDefaults.standard.data(forKey: "EmpData") else {
            return
        }
        employee =  try! JSONDecoder().decode(Employee.self, from: empData) as Employee
    }
}

struct ArchivingData_Previews: PreviewProvider {
    static var previews: some View {
        ArchivingData()
    }
}
