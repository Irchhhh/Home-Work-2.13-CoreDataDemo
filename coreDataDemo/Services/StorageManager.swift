//
//  StorageManager.swift
//  coreDataDemo
//
//  Created by Ирина on 08.12.2021.
//

import Foundation
import CoreData

class StorageManager {
    static let shared = StorageManager()
    static let context = shared.persistentContainer.viewContext
    
    var persistentContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "coreDataDemo")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()

   static func saveContext () {
        if self.context.hasChanges {
            do {
                try context.save()
            } catch {
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }


}
