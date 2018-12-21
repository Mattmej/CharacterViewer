//
//  CharacterViewModel.swift
//  CharacterViewer
//
//  Created by Matt Mejia on 12/20/18.
//  Copyright © 2018 Matt_Mejia. All rights reserved.
//

import Foundation
import SwiftyJSON

// This keyword makes all methods in this class exposed to Objective-C.
@objcMembers
class CharacterViewModel: NSObject {
    
    let persistenceManager = PersistenceManager()
    let serviceManager = ServiceManager()
    
    // Have an array of characters to display to the tableView
    
    
    // Have ServiceManager to retrieve JSON
    
    
    // Parse JSON
    
    // MARK: - Parse JSON
    /**************************************************/
    
//    -(void)parseJSON {
//    [self getJSON:^(NSDictionary *jsonDict) {
//        NSArray *relatedTopics = jsonDict[@"RelatedTopics"];
//    
//        for (NSDictionary *dict in relatedTopics) {
//            NSString *name = [dict[@"Text"] componentsSeparatedByString:@" - "].firstObject;
//            NSString *description = [dict[@"Text"] componentsSeparatedByString:@" - "].lastObject;
//    
//        }
//    }]
//    }
    

    
    
    // Do later
    func getCharacters(_ completion: @escaping() -> Void) {
        ServiceManager.shared().getJSON { [weak self] (characterDict) in
            
        }
    }
    
//    // parse JSON
//    func parseJSON(_ dict: [String:Any]) -> [Character] {
//        guard let relatedTopics = dict["RelatedTopics"] as? [String:Any] else { return [] }
////        guard relatedTopics.count > 0 else { return[] }
//
//        var charDict = [Character]()
//
//
//
//        for (key, value) in relatedTopics {
//            let characterName = String(value["Text"].split(separator: "-")[0])
//            let characterDescription = String(entry["Text"].stringValue.split(separator: "-")[1])
//            let characterImageURL = entry["Icon"]["URL"].stringValue
//
////            let character = self.persistenceManager.save(c)
//
//            let character = self.persistenceManager.saveCharacter(characterName: characterName, imageURL: characterImageURL, characterDescription: characterDescription)
//
//            charDict.append(character)
//        }
//
//        return charDict
//    }
    
    
}
