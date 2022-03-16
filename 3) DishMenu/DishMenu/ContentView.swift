//
//  ContentView.swift
//  DishMenu
//
//  Created by César on 25/02/21.
//

import SwiftUI

struct ContentView: View {
    var categories:[String:[Product]]{
        .init(grouping: foodData, by:{$0.category})
    }
    
    var body: some View {
        NavigationView{
            List(categories.keys.sorted(), id:\.self){ category in
                
                FoodRow(category: "\(category)", foods: categories[category]!)
                    .frame(height: 320)
                    .padding(.top)
                    .padding(.bottom)
                
                
            }
            .navigationTitle("Restaurante")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
