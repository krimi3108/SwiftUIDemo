//
//  Order.swift
//  SwiftUIDemo
//
//  Created by Kritika Middha on 14/04/20.
//  Copyright © 2020 Ranosys. All rights reserved.
//

import SwiftUI

class Order: ObservableObject, Codable {
    enum CodingKeys: CodingKey {
        case quantity, type, extraFrosting, addSprinkles, name, streat, country, zip
    }
    
    static let types = ["Chocolate", "Vallina", "Strawberry"]
    
    @Published var quantity = 3
    @Published var type = 0
    
    @Published var specialRequestEnable = false {
        didSet {
            if self.specialRequestEnable == false {
                extraFrosting = false
                addSprinkles = false
            }
        }
    }
    @Published var extraFrosting = false
    @Published var addSprinkles = false
    
    @Published var name = ""
    @Published var streat = ""
    @Published var country = ""
    @Published var zip = ""
    
    var cost: Double {
        var cost = Double(quantity) * 2
        cost += Double(type) / 2
        
        if extraFrosting {
            cost += Double(quantity)
        }
        
        if addSprinkles {
            cost += Double(quantity) / 2
        }
        
        return cost
    }
    
    init() { }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        quantity = try container.decode(Int.self, forKey: .quantity)
        type = try container.decode(Int.self, forKey: .type)
        
        extraFrosting = try container.decode(Bool.self, forKey: .extraFrosting)
        addSprinkles = try container.decode(Bool.self, forKey: .addSprinkles)
        
        name = try container.decode(String.self, forKey: .addSprinkles)
        streat = try container.decode(String.self, forKey: .streat)
        country = try container.decode(String.self, forKey: .country)
        zip = try container.decode(String.self, forKey: .zip)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try container.encode(quantity, forKey: .quantity)
        try container.encode(type, forKey: .type)
        
        try container.encode(extraFrosting, forKey: .extraFrosting)
        try container.encode(addSprinkles, forKey: .addSprinkles)
        
        try container.encode(name, forKey: .name)
        try container.encode(streat, forKey: .streat)
        try container.encode(country, forKey: .country)
        try container.encode(zip, forKey: .zip)
    }
}
