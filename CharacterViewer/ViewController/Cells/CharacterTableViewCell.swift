//
//  CharacterTableViewCell.swift
//  CharacterViewer
//
//  Created by Matt Mejia on 12/20/18.
//  Copyright © 2018 Matt_Mejia. All rights reserved.
//

import UIKit

class CharacterTableViewCell: UITableViewCell {
    
    @IBOutlet weak var characterName: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setup(name: String) {
        self.characterName.text = name
    }

}
