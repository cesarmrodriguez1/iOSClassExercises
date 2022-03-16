//
//  FoodItem.swift
//  DishMenu
//
//  Created by César on 25/02/21.
//

import SwiftUI

struct FoodItem: View {
    
    var food:Product
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16.0)
        {
            Image(food.imageName)
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame(width: 300, height: 170)
                .cornerRadius(10.0)
                .shadow(radius: 10.0)
            
            VStack(alignment: .leading, spacing: 5.0)
                {
                Text(food.name)
                    .foregroundColor(.black)
                    .font(.title)
                
                Text(food.description)
                    .foregroundColor(.black)
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                    .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                    .frame(height: 40)
                
            }
        }
    }
}

struct FoodItem_Previews: PreviewProvider {
    static var previews: some View {
        FoodItem(food: foodData[0])
    }
}
