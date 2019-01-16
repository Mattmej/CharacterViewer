//
//  CharacterViewModel.swift
//  CharacterViewer
//
//  Created by Matt Mejia on 12/20/18.
//  Copyright © 2018 Matt_Mejia. All rights reserved.
//

import Foundation


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

    
    func getJSON(completion: SuccessfulResponse) {
        
        ServiceManager.shared().getJSON { (jsonDict) in
            guard let dict = jsonDict as? [String:Any] else { return }
            
            print(dict)
            
            guard let relatedTopics = dict["RelatedTopics"] as? [[String:Any]] else { return }
            
            for topic in relatedTopics {
                
            }
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
