//
//  DesignableButton.swift
//  User_Management
//
//  Created by Sophie van Wersch on 17/05/2018.
//  Copyright © 2018 Sophie van Wersch. All rights reserved.
//

import UIKit

class DesignableButton: BounceButton {

    @IBInspectable var borderWidth: CGFloat = 0.0 {
        didSet {
            self.layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var borderColor: UIColor = UIColor.clear {
        didSet {
            self.layer.borderColor = borderColor.cgColor
        }
        
    }
    
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }

}
