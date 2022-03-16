//
//  TextToggleButton.swift
//  WrappersUse
//
//  Created by César on 04/03/21.
//

import SwiftUI

struct TextToggleButton: View {
    @Binding var showDetails: Bool
    
    var body: some View {
        Button(action: {self.showDetails.toggle()}, label: {
            Text(self.showDetails ? "Ocultar nombres" : "Mostrar nombres").foregroundColor(.primary)
        })
    }
}

/*
struct TextToggleButton_Previews: PreviewProvider {
    static var previews: some View {
        TextToggleButton(self.showDetails: true)
    }
}
*/
