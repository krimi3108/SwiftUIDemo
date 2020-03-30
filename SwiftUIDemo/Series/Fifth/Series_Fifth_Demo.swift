//
//  Series_Fifth_Demo.swift
//  SwiftUIDemo
//
//  Created by Kritika Middha on 27/03/20.
//  Copyright © 2020 Ranosys. All rights reserved.
//

import SwiftUI

struct Series_Fifth_Demo: View {
    @State private var newWord = ""
    @State private var rootWord = ""
    @State private var usedWords = [String]()
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Enter your string", text: $newWord, onCommit: addNeword)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                List(usedWords, id:\.self) {
                    Image(systemName: "\($0.count).circle")
                    Text($0)
                    
                }
            }
            .navigationBarTitle(rootWord)
            .onAppear(perform: getNavigationTitle)
        }
    }
    
    func addNeword() {
        let answer = self.newWord.lowercased().trimmingCharacters(in: .whitespacesAndNewlines)
        
        guard answer.count > 0 else {
            return
        }
        
        // Add some validation
        if !usedWords.contains(newWord) {
            usedWords.insert(answer, at: 0)
            newWord = ""
        }
    }

    func getNavigationTitle() {
        let titleArray = ["Obj-C", "Swift", "Swift UI", "Vapor"]
        rootWord = titleArray.randomElement() ?? "OOPS! No such Word"
    }
    
}

struct Series_Fifth_Demo_Previews: PreviewProvider {
    static var previews: some View {
        Series_Fifth_Demo()
    }
}
