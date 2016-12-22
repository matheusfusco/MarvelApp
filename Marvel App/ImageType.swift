//
//  ImageType.swift
//  Marvel App
//
//  Created by Matheus Pacheco Fusco on 22/12/16.
//  Copyright © 2016 MatheusFusco. All rights reserved.
//

import Foundation

class ImageType : NSObject {
    //Portrait aspect ratio
    open static let portrait_small = "portrait_small" //50x75px
    open static let portrait_medium = "portrait_medium" //100x150px
    open static let portrait_xlarge = "portrait_xlarge" //150x225px
    open static let portrait_fantastic = "portrait_fantastic" //168x252px
    open static let portrait_incredible = "portrait_incredible" //216x324px
    open static let portrait_uncanny = "portrait_uncanny" //300x450px
    
    //Standard (square) aspect ratio
    open static let standard_small = "standard_small" //65x45px
    open static let standard_medium = "standard_medium" //100x100px
    open static let standard_large = "standard_large" //140x140px
    open static let standard_amazing = "standard_amazing" //180x180px
    open static let standard_xlarge = "standard_xlarge" //200x200px
    open static let standard_fantastic = "standard_fantastic" //250x250px
    
    //Landscape aspect ratio
    open static let landscape_small = "landscape_small" //120x90px
    open static let landscape_medium = "landscape_medium" //175x130px
    open static let landscape_large = "landscape_large" //190x140px
    open static let landscape_amazing = "landscape_amazing" //250x156px
    open static let landscape_xlarge = "landscape_xlarge" //270x200px
    open static let landscape_incredible = "landscape_incredible" //464x261px
}
