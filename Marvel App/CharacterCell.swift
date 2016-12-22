//
//  CharacterCell.swift
//  Marvel App
//
//  Created by Matheus Pacheco Fusco on 20/12/16.
//  Copyright © 2016 MatheusFusco. All rights reserved.
//

import Foundation
import UIKit

class CharacterCell : UITableViewCell {
    @IBOutlet weak var characterImage: UIImageView!
    @IBOutlet weak var characterNameLabel: UILabel!
    
    fileprivate var character : Character = {
        return Character()
    }()
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    open func loadCharacter(_ character : Character) {
        self.character = character
        
        if let characterName = self.character.name {
            characterNameLabel.text = characterName
        }
        
        var thumbImg = ThumbImage()
        thumbImg.path = self.character.path!
        thumbImg.imageExtenstion = self.character.imageExtenstion!
        
        let characterImgURL = thumbImg.fullPath(type: ImageType.standard_fantastic)
        characterImage.sd_setImage(with: URL(string : characterImgURL))
    }
}
