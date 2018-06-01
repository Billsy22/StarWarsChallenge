//
//  CoreDataStack.swift
//  StarWarsCodeChallenge
//
//  Created by Taylor Bills on 5/31/18.
//  Copyright © 2018 Taylor Bills. All rights reserved.
//

import Foundation
import CoreData

enum CoreDataStack {
    
    static let containter: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "List of Individuals")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Error with CoreData Stack \(error.localizedDescription) \(#file)")
            }
        })
        return container
    }()
    static var context: NSManagedObjectContext {
        return containter.viewContext
    }
}
