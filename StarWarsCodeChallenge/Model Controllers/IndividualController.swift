//
//  IndividualController.swift
//  StarWarsCodeChallenge
//
//  Created by Taylor Bills on 5/31/18.
//  Copyright © 2018 Taylor Bills. All rights reserved.
//

import Foundation

class IndividualController {
    
    // MARK: -  Properties
    static let shared = IndividualController()
    
    // MARK: -  CRUD functions
    
    // Add Individual
    func addIndividual(id: Int32, firstName: String, lastName: String, birthdate: String, profilePic: String, forceSensitive: Bool, affiliation: String) {
        _ = Individual(id: id, firstName: firstName, lastName: lastName, birthdate: birthdate, profilePic: profilePic, forceSensitive: forceSensitive, affiliation: affiliation)
        IndividualController.saveToPersistentStorage()
    }
    
    // Update Individual
    func update(individual: Individual, newId: Int32, newFirstName: String, newLastName: String, newBirthdate: String, newProfilePic: String, newForceSensitive: Bool, newAffiliation: String) {
        individual.id = newId
        individual.firstName = newFirstName
        individual.lastName = newLastName
        individual.birthdate = newBirthdate
        individual.profilePic = newProfilePic
        individual.forceSensitive = newForceSensitive
        individual.affiliation = newAffiliation
        IndividualController.saveToPersistentStorage()
    }
    
    // Save to persistence
    private static func saveToPersistentStorage() {
        do {
            try CoreDataStack.context.save()
        } catch {
            print(error.localizedDescription)
        }
    }
}
