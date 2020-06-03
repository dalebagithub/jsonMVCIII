//
//  ui.extensions.constants.swift
//  jsonMVCIII
//
//  Created by Duale on 6/3/20.
//  Copyright © 2020 Duale. All rights reserved.
//

import Foundation
import UIKit

extension UILabel  {
    func beautify(indexpath : Int) {
        self.layer.borderWidth = 1.0
        self.layer.borderColor =  (indexpath % 2 == 0 ) ? UIColor.black.cgColor  : UIColor.white.cgColor
        self.textAlignment = .center
        self.adjustsFontSizeToFitWidth = true
        self.textColor = (indexpath % 2 == 0 ) ? UIColor.black : UIColor.white
    }
    func beautifyII() {
        self.layer.borderWidth = 1.0
        self.layer.borderColor =  UIColor.systemOrange.cgColor
        self.textAlignment = .center
        self.adjustsFontSizeToFitWidth = true
        self.textColor = UIColor.black
    }
    
}

extension UIImageView {
    func beautifty() {
        self.layer.borderWidth = 2
        self.layer.borderColor = UIColor.systemOrange.cgColor
        self.layer.masksToBounds = false
        self.layer.cornerRadius = self.frame.height/2
        self.clipsToBounds = true
        self.contentMode = .scaleAspectFill
    }
}
