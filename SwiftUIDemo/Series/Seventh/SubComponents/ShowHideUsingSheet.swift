//
//  ShowHideUsingSheet.swift
//  SwiftUIDemo
//
//  Created by Kritika Middha on 01/04/20.
//  Copyright © 2020 Ranosys. All rights reserved.
//

import SwiftUI

struct SecondView: View {
    var name: String
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Hello \(name)!")
            
            Button("Dismiss") {
                self.presentationMode.wrappedValue.dismiss()
            }
        }
    }
}


struct ShowHideUsingSheet: View {
    @State private var showSheet = false
    
    var body: some View {

        Button("Show Sheet") {
            self.showSheet.toggle()
        }
        .sheet(isPresented: $showSheet) {
            SecondView(name: "Kritika")
        }
        
    }
}

struct ShowHideUsingSheet_Previews: PreviewProvider {
    static var previews: some View {
        ShowHideUsingSheet()
    }
}
