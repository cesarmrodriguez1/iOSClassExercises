//
//  Dish.swift
//  FirebaseExample
//
//  Created by César on 26/04/22.
//

import Foundation

struct Dish: Identifiable {
    var id: String = UUID().uuidString
    var name: String
    var description: String
}
