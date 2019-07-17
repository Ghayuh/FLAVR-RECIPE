//
//  SignUpViewController.swift
//  FLAVR_RECIPE
//
//  Created by Ghayuh Fernanda Putra on 07/07/19.
//  Copyright © 2019 Ghayuh Fernanda Putra. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var nameSignUpTextfield: CustomTextField!
    @IBOutlet weak var emailSignUpTextfield: CustomTextField!
    @IBOutlet weak var passwordSignUpTextfield: CustomTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // initiate
        nameSignUpTextfield.delegate = self
        emailSignUpTextfield.delegate = self
        passwordSignUpTextfield.delegate = self
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        nameSignUpTextfield.resignFirstResponder()
        emailSignUpTextfield.resignFirstResponder()
        passwordSignUpTextfield.resignFirstResponder()
        
        return true
    }
}
