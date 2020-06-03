//
//  Photo.swift
//  jsonMVCIII
//
//  Created by Duale on 6/3/20.
//  Copyright © 2020 Duale. All rights reserved.
//

import Foundation

struct Photo  : Codable {
    var albumId : Int
    var id : Int
    var title : String
    var url : String 
}
