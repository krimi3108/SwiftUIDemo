
//  PublishdAndCodeable.swift
//  SwiftUIDemo
//
//  Created by Kritika Middha on 14/04/20.
//  Copyright © 2020 Ranosys. All rights reserved.
//

import SwiftUI

class UserData: Codable, ObservableObject {
    enum CodingKeys: CodingKey {
        case name, age
    }
    
    @Published var name: String
    @Published var age: Int
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        name = try container.decode(String.self, forKey: .name)
        age = try container.decode(Int.self, forKey: .age)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try container.encode(name.self, forKey: .name)
        try container.encode(age.self, forKey: .age)
    }
}

struct PublishdAndCodeable: View {
    var body: some View {
        Text("Hello, World!")
    }
}

struct PublishdAndCodeable_Previews: PreviewProvider {
    static var previews: some View {
        PublishdAndCodeable()
    }
}
