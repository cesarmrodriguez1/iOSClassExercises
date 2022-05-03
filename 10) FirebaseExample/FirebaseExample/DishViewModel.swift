//
//  DishViewModel.swift
//  FirebaseExample
//
//  Created by César on 26/04/22.
//

import Foundation
import FirebaseFirestore

class DishViewModel: ObservableObject {
    
    @Published var dishes = [Dish]()
    
    private var db = Firestore.firestore()
    
    func fetchData() {
        db.collection("dishes").addSnapshotListener { (querySnapshot, error) in
            guard let documents = querySnapshot?.documents else {
                print("No documents obtained")
                return
            }
            
            self.dishes = documents.map { (queryDocumentSnapshot) -> Dish in
                let data = queryDocumentSnapshot.data()
                let name = data["name"] as? String ?? ""
                let description = data["description"] as? String ?? ""
                return Dish(name: name, description: description)
            }
        }
    }
}
