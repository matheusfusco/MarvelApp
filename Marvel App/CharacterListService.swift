//
//  CharacterListService.swift
//  Marvel App
//
//  Created by Matheus Pacheco Fusco on 19/12/16.
//  Copyright © 2016 MatheusFusco. All rights reserved.
//

import Foundation
import UIKit
import AFNetworking
import SVProgressHUD

class CharacterListService : NSObject {
    
    fileprivate static let charactersURL = "public/characters"
    
    static public func characterListRequest(completion: @escaping (Any?) -> Void) {
        
        SVProgressHUD.show()
        
        let manager = AFHTTPRequestOperationManager()
        manager.requestSerializer.timeoutInterval = 10
        
        let parameters : [String : Any] = ["apikey" : Config.publicKey,
                          "ts"     : Config.timeStamp,
                          "hash"   : Config.hashAPI!,
                          "limit"  : 5]
        
        manager.get("\(Config.url)\(CharacterListService.charactersURL)", parameters: parameters, success: { (operation, result) in
            if let json = result as? NSDictionary {
                if let data = json["data"] as? NSDictionary {
                    if let characters = data["results"] as? NSArray {
                        completion(characters)
                        SVProgressHUD.dismiss()
                    }
                }
            }
        }) { (operation, error) in
            completion(error)
        }
    }
}
