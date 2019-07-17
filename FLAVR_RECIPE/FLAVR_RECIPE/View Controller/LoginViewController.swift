//
//  LoginViewController.swift
//  FLAVR_RECIPE
//
//  Created by Ghayuh Fernanda Putra on 04/07/19.
//  Copyright © 2019 Ghayuh Fernanda Putra. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate{
    
    //UI View Properties
    @IBOutlet weak var emailTextField: CustomTextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // initiate the textfield to delegate by itself.
        emailTextField.delegate = self
        passwordTextField.delegate = self
    }
    
    /* func : this function will hide the keyboard when tap the view. */
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    /* func : this function will hide the keyboard when "return" button on
              keyboard press.
     */
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        emailTextField.resignFirstResponder()
        passwordTextField.resignFirstResponder()
        return true
    }
}
