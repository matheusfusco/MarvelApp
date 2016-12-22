//
//  Config.swift
//  Marvel App
//
//  Created by Matheus Pacheco Fusco on 20/12/16.
//  Copyright © 2016 MatheusFusco. All rights reserved.
//

import Foundation

class Config : NSObject {
    
    open static let url        = "http://gateway.marvel.com/v1/"
    open static let publicKey  = "a31db612a95b88260b9850e20f734397"
    open static let privateKey = "b4c965e366af5dee968e08693e3dda58a150e08b"
    open static let timeStamp  = Date().timeIntervalSince1970.description
    open static let hashAPI    = "\(timeStamp)\(privateKey)\(publicKey)".MD5
}
