//
//  JSONConverter.swift
//  Marvel App
//
//  Created by Matheus Pacheco Fusco on 20/12/16.
//  Copyright © 2016 MatheusFusco. All rights reserved.
//

import Foundation

class JSONConverter: NSObject {
    
    static func convertToCharacter(_ result : NSDictionary) -> Character {
        var character = Character()
        
        if let id = result["id"] as? Int {
            character.id = id
        }
        
        if let name = result["name"] as? String {
            character.name = name
        }
        
        if let bio = result["description"] as? String {
            character.bio = bio
        }
        
        if let thumb = result["thumbnail"] as? NSDictionary {
            if let path = thumb["path"] as? String {
                character.path = path
            }
            if let imgExt = thumb["extension"] as? String {
                character.imageExtenstion = imgExt
            }
            //print(thumbImg.fullPath())
        }
        
        return character
    }
}
