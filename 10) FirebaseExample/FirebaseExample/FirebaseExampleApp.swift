//
//  FirebaseExampleApp.swift
//  FirebaseExample
//
//  Created by César on 26/04/22.
//

import SwiftUI
import Firebase

class AppDelegate: NSObject, UIApplicationDelegate {

  func application(_ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions:
                   [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    FirebaseApp.configure()
    return true
  }
}

@main
struct FirebaseExampleApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    @StateObject var authenticationViewModel = AuthenticationViewModel()
    @StateObject var dishViewModel = DishViewModel()

    var body: some Scene {
        WindowGroup {
            if authenticationViewModel.user != nil{
            ContentView(authenticationViewModel: authenticationViewModel, dishViewModel: dishViewModel)
                
                        } else {
                            LoginView(authenticationViewModel: authenticationViewModel)
                        }
        }
    }
}
