//
//  ShoppingModel.swift
//  HomeWork5_BohdanBuhai
//
//  Created by Bohdan on 5/29/23.
//

import Foundation
import UIKit

struct Shopping: Codable {
    let name: String
}

class Base {
    
    static let shared = Base()
    private let userDefaolts = UserDefaults.standard
    
    var arrayShoppings: [Shopping] {
        get{
            if let data = userDefaolts.data(forKey: "arrayShoppings") {
                return try! PropertyListDecoder().decode([Shopping].self, from: data)
            } else {
                return [Shopping]()
            }
        }
        set{
            let data =  try?PropertyListEncoder().encode(newValue)
            userDefaolts.set(data, forKey: "arrayShoppings")
        }
    }
}


