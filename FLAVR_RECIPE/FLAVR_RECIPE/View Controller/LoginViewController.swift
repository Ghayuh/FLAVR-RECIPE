//
//  LoginViewController.swift
//  FLAVR_RECIPE
//
//  Created by Ghayuh Fernanda Putra on 04/07/19.
//  Copyright © 2019 Ghayuh Fernanda Putra. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    //UI View Properties
    @IBOutlet weak var emailTextField: CustomTextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideKeyboard()
//        self.hideKeyboard()
//        passwordTextField.delegate = self as? UITextFieldDelegate
    }
    
    func hideKeyboard(){
        let tap = UIGestureRecognizer(target: self, action: #selector(dissmissKeyboard))
        tap.cancelsTouchesInView = false
        self.view.addGestureRecognizer(tap)
    }
    
    @objc func dissmissKeyboard(){
        self.view.endEditing(true)
    }
}
