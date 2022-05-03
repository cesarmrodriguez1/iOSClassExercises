//
//  DiscardView.swift
//  FirebaseExample
//
//  Created by César on 26/04/22.
//

import SwiftUI

struct DiscardView: View {
    @Environment(\.dismiss) var discard
    
    var body: some View {
        HStack {
            Spacer()
            Button("Cerrar") {
                discard()
            }
            .tint(.black)
            .padding(.trailing, 12)
        }
        .textFieldStyle(.roundedBorder)
        .buttonStyle(.bordered)
    }
}
