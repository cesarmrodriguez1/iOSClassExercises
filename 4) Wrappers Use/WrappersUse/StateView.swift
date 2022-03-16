//
//  StateView.swift
//  WrappersUse
//
//  Created by César on 04/03/21.
//

import SwiftUI

struct StateView: View {
    @State var dish = "pizza"
    
    var body: some View {
        VStack{
            Image(dish)
                .resizable()
                .frame(width: 400, height: 300, alignment: .center)
            
            Button(action: switchDish, label: {
                Text("Change dish")
                    .foregroundColor(.primary)
                    .font(.title)
                    .padding(10)
            }).background(Color.blue)
            .cornerRadius(20.0)
        }
    }
    func switchDish()
    {
        let list = ["pizza", "hamburguesa", "copa", "sushi", "camarones", "soda"]
        
        dish = list.randomElement() ?? ""
    }
}

struct StateView_Previews: PreviewProvider {
    static var previews: some View {
        StateView()
    }
}
