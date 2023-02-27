//
//  ShoppingItem.swift
//  Shopping List
//
//  Created by Diante Lewis-Jolley on 2/25/23.
//  Copyright © 2023 BloomTech. All rights reserved.
//
import UIKit


struct ShoppingItem: Codable, Equatable {
    
    let name: String
    var hasBeenAdded: Bool
    
    
    init(name: String, hasBeenAdded: Bool = false) {
        self.name = name
        self.hasBeenAdded = hasBeenAdded
        
        var image: UIImage {
            return UIImage(named: name)!
        }
    }
}
