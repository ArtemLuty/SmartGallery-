//
//  Extension.swift
//  Smart Gallery 2
//
//  Created by Корістувач on 14.04.2020.
//  Copyright © 2020 kolesnikov. All rights reserved.
//

import Foundation
import UIKit


extension UILabel {
    convenience init(text: String, font: UIFont, textColor: UIColor) {
        self.init(frame: .zero)
        self.text = text
        self.font = font
        self.textColor = textColor
    }
    
    convenience init(text: String, font: UIFont, textAlignment: NSTextAlignment) {
        self.init(frame: .zero)
        self.text = text
        self.font = font
        self.textAlignment = textAlignment
        
    }
    
}
