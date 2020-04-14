//
//  Textfield_adjust_KeyBoard.swift
//  SwiftUIDemo
//
//  Created by Kritika Middha on 09/04/20.
//  Copyright © 2020 Ranosys. All rights reserved.
//

import SwiftUI

class KeyBoardOberver: ObservableObject {
    @Published var currentHeight: CGFloat = 0
    
    var _center: NotificationCenter
    
    init(center: NotificationCenter = .default) {
        _center =  center
        
        _center.addObserver(self, selector: #selector(keyBoardShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        _center.addObserver(self, selector: #selector(keyBoardhide), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    @objc func keyBoardShow(_ notification: Notification) {
        if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
            withAnimation {
                currentHeight = keyboardSize.height
            }
        }
        
    }
    @objc func keyBoardhide(_ notification: Notification) {
//        withAnimation {
            currentHeight = 0
//        }
        
    }
}

struct Textfield_adjust_KeyBoard: View {
    @State private var text = ""
    
    @ObservedObject var keyboadObserver = KeyBoardOberver()
    var body: some View {
//        NavigationView {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [.yellow, .black]), startPoint: .top, endPoint: .bottom)
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    Spacer()
                    TextField("Enter any thing...", text: $text)                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .cornerRadius(10)
                    .padding()
                }
            }
            
//        }
        .offset(y: -keyboadObserver.currentHeight * 0.9)
        
    }
}

struct Textfield_adjust_KeyBoard_Previews: PreviewProvider {
    static var previews: some View {
        Textfield_adjust_KeyBoard()
    }
}
