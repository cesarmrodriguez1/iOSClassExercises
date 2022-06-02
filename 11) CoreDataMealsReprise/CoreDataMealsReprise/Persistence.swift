//
//  Persistence.swift
//  CoreDataTrackReprise
//
//  Created by César on 20/05/22.
//

import CoreData

struct PersistenceController {
    static let shared = PersistenceController()
    
    let container: NSPersistentCloudKitContainer
    
    init(){
        
        container = NSPersistentCloudKitContainer(name: "MealsModel")
        
        container.loadPersistentStores{ (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error: \(error)")
            }
        }
        
        //iCloud only:
        
       container.viewContext.automaticallyMergesChangesFromParent = true
        
       container.viewContext.mergePolicy = NSMergeByPropertyObjectTrumpMergePolicy
    }
}
