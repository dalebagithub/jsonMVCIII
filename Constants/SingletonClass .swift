//
//  SingletonClass .swift
//  jsonMVCIII
//
//  Created by Duale on 6/3/20.
//  Copyright © 2020 Duale. All rights reserved.
//

import Foundation
import UIKit

class UrlPathSingleTon {
    static let urlsingleton = UrlPathSingleTon()
    private init() {}
    let urlpath = "https://jsonplaceholder.typicode.com/photos"
    func shared () -> String {
      return urlpath
    }
}
