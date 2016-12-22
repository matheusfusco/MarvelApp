//
//  CharacterListModel.swift
//  Marvel App
//
//  Created by Matheus Pacheco Fusco on 19/12/16.
//  Copyright © 2016 MatheusFusco. All rights reserved.
//

import UIKit

protocol CharacterListDelegate : class {
    func characterListResponse (_ characterListModel : CharacterListModel)
}

class CharacterListModel : NSObject {
    weak var delegate : CharacterListDelegate?
    
    var error : NSError?
    
    open lazy var characters : [Character] = {
        return [Character]()
    }()
    
    init(delegate : CharacterListDelegate) {
        self.delegate = delegate
    }
    
    open func characterListRequest() {
        CharacterListService.characterListRequest { (result) in
            if let characters = result as? NSArray
            {
                for character in characters
                {
                    self.characters.append(JSONConverter.convertToCharacter(character as! NSDictionary))
                }
                print(characters[1])
            }
            else if let error = result as? NSError {
                self.error = error
            }
            self.delegate?.characterListResponse(self)
        }
    }
        
}
