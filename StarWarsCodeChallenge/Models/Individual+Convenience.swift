//
//  Character+Convenience.swift
//  StarWarsCodeChallenge
//
//  Created by Taylor Bills on 5/31/18.
//  Copyright © 2018 Taylor Bills. All rights reserved.
//

import Foundation
import CoreData

extension Individual {
    
    // MARK: -  Convenience initializer for CoreData
    convenience init(id: Int32, firstName: String, lastName: String, birthdate: String, profilePic: String, forceSensitive: Bool, affiliation: String, context: NSManagedObjectContext = CoreDataStack.context) {
        self.init(context: context)
        self.id = id
        self.firstName = firstName
        self.lastName = lastName
        self.birthdate = birthdate
        self.profilePic = profilePic
        self.forceSensitive = forceSensitive
        self.affiliation = affiliation
    }
}
