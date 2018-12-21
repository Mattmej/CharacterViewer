//
//  CharacterViewModel.swift
//  CharacterViewer
//
//  Created by Matt Mejia on 12/20/18.
//  Copyright © 2018 Matt_Mejia. All rights reserved.
//

import Foundation
import SwiftyJSON
import Alamofire

typealias SuccessfulResponse = () -> ()


// This keyword makes all methods in this class exposed to Objective-C.
@objcMembers
class CharacterViewModel: NSObject {
    
    let persistenceManager = PersistenceManager()
//    let serviceManager = ServiceManager()
    
    // Have an array of characters to display to the tableView
    
    
    // Have ServiceManager to retrieve JSON
    
    
    // Parse JSON
    
    // MARK: - Parse JSON
    /**************************************************/

    

    func performRequestTo(url urlString: String, onSuccess: @escaping SuccessfulResponse) {
        guard let url = URL(string: urlString) else {
            return
        }
        
        Alamofire.request(url).responseJSON(queue: DispatchQueue.main, options: .mutableLeaves) { response in
            let json = JSON(rawValue: response.result.value!)!
            
            for character in json["RelatedTopics"].arrayValue {
                let name = String (character["Text"].stringValue.split(separator: "-")[0].split(separator: "(")[0])
                let imageURL = character["Icon"]["URL"].stringValue
                let description = String (character["Text"].stringValue.split(separator: "-")[1])
                
                self.persistenceManager.saveCharacter(characterName: name, imageURL: imageURL, characterDescription: description)
            }
            onSuccess()
        }
    }
    
    func downloadImageFrom(urlString: String, completion: @escaping (Data) -> ()) {
        let noImageUrl = "https://upload.wikimedia.org/wikipedia/commons/a/ac/No_image_available.svg"
        var stringURL = noImageUrl
        
        if !urlString.isEmpty {
            stringURL = urlString
        }
        
        guard let url = URL(string: stringURL) else {
            return
        }
        
        Alamofire.request(url).response { (dataResponse) in
            guard let data = dataResponse.data else {
                return
            }
            completion(data)
        }
    }
    
    
    
    
    

    
    
}
