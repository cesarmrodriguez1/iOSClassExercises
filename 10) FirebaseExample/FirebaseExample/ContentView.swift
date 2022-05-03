//
//  ContentView.swift
//  FirebaseExample
//
//  Created by César on 26/04/22.
//
import SwiftUI

struct ContentView: View {
    @ObservedObject var authenticationViewModel: AuthenticationViewModel
    @ObservedObject var dishViewModel: DishViewModel
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Bienvenido \(authenticationViewModel.user?.email ?? "No user")")
                    .padding(.top, 32)
                Spacer()
                
                List(dishViewModel.dishes) { dish in
                                VStack(alignment: .leading) {
                                    Text(dish.name).font(.title)
                                    Text(dish.description).font(.subheadline)
                                }
                            }.navigationBarTitle("Users")
                            .onAppear() {
                                self.dishViewModel.fetchData()
                            }
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationTitle("Home")
            .toolbar {
                Button("Logout") {
                    authenticationViewModel.logout()
                }
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(authenticationViewModel: AuthenticationViewModel(), dishViewModel: DishViewModel())
    }
}
