//
//  BounceButton.swift
//  User_Management
//
//  Created by Sophie van Wersch on 17/05/2018.
//  Copyright © 2018 Sophie van Wersch. All rights reserved.
//

import UIKit

class BounceButton: UIButton {

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        // Not: Transform - alteration i.e. enlarging / rotating
        // Note: Self refers (here) to the UIButton
        
        // Increase size (1.1% bigger) with use of scaleX
        self.transform = CGAffineTransform(scaleX: 1.1, y: 1.1)
        // Creates a bounce / physical spring
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 6, options: .allowUserInteraction, animations:
            {
                // Set button back to it's default size with use of identity
                self.transform = CGAffineTransform.identity
                }, completion: nil)
        
                // Super refers to the class you're inheriting (UIButton)
                super.touchesBegan(touches, with: event)
    }

}
