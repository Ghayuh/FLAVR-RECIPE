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
    @IBOutlet weak var loginButton: CustomButton!
    @IBOutlet weak var dontHaveAccountLabel: CustomLabel!
    @IBOutlet weak var signUpButton: CustomButton!
    @IBOutlet weak var flavrLabel: CustomLabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpProperties()
    }
    
    func setUpProperties(){
        
        signUpButton.makeCustomWhiteButton()
        flavrLabel.setSpacing(space: 1.75)
        
        // alternative if you call or still in UIButton class
        //(signUpButton as! CustomButton).makeCustomWhiteButton()
    }
    
    override var prefersStatusBarHidden: Bool{
        return true
    }

}
