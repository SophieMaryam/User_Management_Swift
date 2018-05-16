//
//  DesignableView.swift
//  User_Management
//
//  Created by Sophie van Wersch on 16/05/2018.
//  Copyright © 2018 Sophie van Wersch. All rights reserved.
//

import UIKit

@IBDesignable class DesignableView: UIView {

    // ROUNDED CORNERS
    
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }

}
