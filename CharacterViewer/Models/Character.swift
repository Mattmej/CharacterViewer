//
//  Character.swift
//  CharacterViewer
//
//  Created by Matt Mejia on 1/16/19.
//  Copyright © 2019 Matt_Mejia. All rights reserved.
//

//import Foundation
import UIKit

struct Character {
    let characterName: String
    let characterDescription: String
    
    init(characterName: String, characterDescription: String) {
        self.characterName = characterName
        self.characterDescription = characterDescription
    }
}
