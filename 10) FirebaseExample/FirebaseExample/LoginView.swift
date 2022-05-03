//
//  LoginView.swift
//  FirebaseExample
//
//  Created by César on 26/04/22.
//

import SwiftUI

enum AuthenticationSheetView: String, Identifiable {
    case register
    case login
    
    var id: String {
        return rawValue
    }
}

struct LoginView: View {
    @ObservedObject var authenticationViewModel: AuthenticationViewModel
    @State private var authenticationSheetView: AuthenticationSheetView?
    
    var body: some View {
        VStack {
            Circle()
                .frame(width: 200, height: 200)
            VStack {
                Button("Entra con Email") {
                    authenticationSheetView = .login
                }
                .tint(.black)
            }
            .controlSize(.large)
            .buttonStyle(.bordered)
            .buttonBorderShape(.capsule)
            .padding(.top, 60)
            Spacer()
            HStack {
                Button {
                    authenticationSheetView = .register
                } label: {
                    Text("¿No tienes cuenta?")
                    Text("Regístrate")
                        .underline()
                }
                .tint(.black)
            }
        }
        .sheet(item: $authenticationSheetView) { sheet in
            switch sheet {
            case .register:
                EmailRegisterView(authenticationViewModel: authenticationViewModel)
            case .login:
                LoginEmailView(authenticationViewModel: authenticationViewModel)
            }
        }
    }
}

struct AuthenticationView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(authenticationViewModel: AuthenticationViewModel())
    }
}
