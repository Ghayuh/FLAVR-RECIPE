//
//  LoginSignUpViewController.swift
//  FLAVR_RECIPE
//
//  Created by Ghayuh Fernanda Putra on 01/07/19.
//  Copyright © 2019 Ghayuh Fernanda Putra. All rights reserved.
//

import UIKit

class LoginSignUpViewController: UIViewController {
    
    //Properties
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var dontHaveAccountLabel: UILabel!
    @IBOutlet weak var signUpButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpProperties()
    }
    
    func setUpProperties(){
        
        let orange = UIColor.orange
        
        //LOG IN BUTTON
        loginButton.layer.cornerRadius = loginButton.layer.frame.height/2
        
        //SPACE
//        let spacing = 1.5
//        let buttonAtributedString = NSMutableAttributedString(attributedString: <#T##NSAttributedString#>)
        
        //SIGN UP BUTTON
        signUpButton.layer.borderWidth = 2
        signUpButton.layer.borderColor = orange.cgColor
        signUpButton.layer.cornerRadius = signUpButton.layer.frame.height/2
    }

}
