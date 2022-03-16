//
//  Data.swift
//  DishMenu
//
//  Created by César on 25/02/21.
//

import Foundation

let foodData:[Product] = load("food.json")

func load<T:Decodable>(_ filename:String, as type:T.Type=T.self) -> T{
    
    let data:Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else{
        fatalError("No es posible encontrar el archivo")
    }
    
    do{
        data = try Data(contentsOf: file)
    }catch{
        fatalError("No se puede cargar el archivo del main bundle")
    }
    
    do{
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    }
    catch{
        fatalError("No se puede deenvolver el archivo JSON")
    }
    
    
}
