//
//  alertView.swift
//  SwiftUIDemo
//
//  Created by Kritika Middha on 24/03/20.
//  Copyright © 2020 Ranosys. All rights reserved.
//

import SwiftUI

struct alertView: View {
    @State private var showAlert = false
    
    var body: some View {

        Button("Show Alert") {
            self.showAlert = true
        }
        .alert(isPresented: $showAlert) { () -> Alert in
            //                        Alert(title: Text("Hello Swift UI"), message: Text("Show Alert"), dismissButton: .cancel())
            
            /*
             Alert(title: Text("Hello Swift UI"), message: Text("Show Alert"), primaryButton: .default(Text("Yes"), action: {
             print("Tapped Yes")
             }), secondaryButton: .default(Text("No"), action: {
             print("Tapped No")})
             )
             */
            
            Alert(title: Text("Hello Swift UI"), primaryButton: .default(Text("Primary"), action: {
                print("This is primary button")
                
            }), secondaryButton: .destructive(Text("Destructive")))
        }
        
    }
}

struct alertView_Previews: PreviewProvider {
    static var previews: some View {
        alertView()
    }
}
