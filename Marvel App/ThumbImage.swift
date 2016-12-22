//
//  ThumbImage.swift
//  Marvel App
//
//  Created by Matheus Pacheco Fusco on 19/12/16.
//  Copyright © 2016 MatheusFusco. All rights reserved.
//

import Foundation

struct ThumbImage {
    var path : String = ""
    var imageExtenstion : String = ""
    
    func fullPath(type: String) -> String {
        return "\(path)/\(type).\(imageExtenstion)"
    }
}
