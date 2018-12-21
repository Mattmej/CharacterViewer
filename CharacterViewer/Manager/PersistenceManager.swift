//
//  PersistenceManager.swift
//  CharacterViewer
//
//  Created by Matt Mejia on 12/20/18.
//  Copyright © 2018 Matt_Mejia. All rights reserved.
//

import Foundation
import CoreData

@objcMembers
final class PersistenceManager: NSObject {
    
    
    // MARK: - Core Data stack
    /*********************************************************/
    
    lazy var persistentContainer: NSPersistentContainer = {
        
         //The persistent container for the application.
        let container = NSPersistentContainer(name: "CharacterViewer")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()
    
    // MARK: - Core Data Saving support
    /*********************************************************/

    
    // Save the persistent container after it detects a change.
    func saveContext () {
        
        // Context will be anything inside the persistent container.
        let context = persistentContainer.viewContext
        
        // If there are any changes in the persistent container, then...
        if context.hasChanges {
            
            do {
                
                // Attempt to save the persistent container.
                try context.save()
            } catch {
                
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }
    
    
    // Save a new character into persistence
    
    func saveCharacter(characterName: String, imageURL: String, characterDescription: String) {
        let persistence = persistentContainer.viewContext
        let character = NSEntityDescription.insertNewObject(forEntityName: "Character", into: persistence)
        
        character.setValue(characterName, forKey: "characterName")
        character.setValue(imageURL, forKey: "characterImageLink")
        character.setValue(characterDescription, forKey: "characterDescription")
        
        do {
            try persistence.save()
        } catch let error as NSError {
            print("Could not save. Error: \(error). Info: \(error.userInfo)")
        }
    }
    
    func loadCharacter() -> [Character] {
        var characterArray: [Character] = []
        
        let persistence = persistentContainer.viewContext
        
        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "Character")
        do {
            characterArray = try persistence.fetch(fetchRequest) as! [Character]
        } catch let error as NSError {
            print("Could not fetch. Error: \(error). Info: \(error.userInfo)")
        }
        
        return characterArray
    }
}
