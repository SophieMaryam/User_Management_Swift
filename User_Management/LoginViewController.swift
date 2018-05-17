//
//  LoginViewController.swift
//  User_Management
//
//  Created by Sophie van Wersch on 16/05/2018.
//  Copyright © 2018 Sophie van Wersch. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var passwordTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        passwordTextfield.delegate = self
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    @IBAction func dismissPopup(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    

    @IBAction func loginButton(_ sender: UIButton) {
        // Login logic
        
        dismiss(animated: true, completion: nil)
        
    }
    
}
