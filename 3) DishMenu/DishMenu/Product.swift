//
//  Product.swift
//  DishMenu
//
//  Created by César on 25/02/21.
//

import Foundation

struct Product: Hashable, Codable, Identifiable{
    var id: Int
    var name: String
    var imageName: String
    var description: String
    var category: String
    
    enum Category: String, CaseIterable, Codable, Hashable{
        case internacional = "Cocina internacional"
        case dessert = "Postre"
        case seafood = "Delicias del mar"
        case drink = "Bebibas"
    }
}
