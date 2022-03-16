//
//  FoodRow.swift
//  DishMenu
//
//  Created by César on 25/02/21.
//

import SwiftUI

struct FoodRow: View {
    
    var category: String
    var foods:[Product]
    
    var body: some View {
        VStack(alignment: .leading){
            Text(self.category)
                .foregroundColor(.black)
                .font(.title)
                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
            
            ScrollView(.horizontal){
                HStack(alignment: .top){
                    
                    ForEach(foods){ food in
                        
                        NavigationLink(
                            destination: FoodDetail(food: food),
                            label: {
                                FoodItem(food:food)
                                    .frame(width:300)
                                    .padding(.trailing, 30)
                            })
                        
                    }
                }
            }
            
            
        }
    }
}

struct FoodRow_Previews: PreviewProvider {
    static var previews: some View {
        FoodRow(category: "Cocina internacional", foods: foodData)
    }
}
