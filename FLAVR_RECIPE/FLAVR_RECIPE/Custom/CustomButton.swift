//
//  CustomButton.swift
//  FLAVR_RECIPE
//
//  Created by Ghayuh Fernanda Putra on 02/07/19.
//  Copyright © 2019 Ghayuh Fernanda Putra. All rights reserved.
//

import UIKit

class CustomButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        defaultSetup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        defaultSetup()
    }
    
    func defaultSetup(){
        //initialitation orange color
        let orange = UIColor.orange
        
        //LOG IN BUTTON
        layer.backgroundColor   = orange.cgColor
        layer.cornerRadius      = layer.frame.height/2
        layer.masksToBounds     = true
        
        //Spacing for text button
        let spacing = 1.5
        let buttonAtributedString = NSMutableAttributedString(string: (titleLabel?.text)!)
        buttonAtributedString.addAttribute(NSAttributedString.Key.kern, value: spacing, range: NSMakeRange(0, buttonAtributedString.length))
        self.setAttributedTitle(buttonAtributedString, for: .normal)
    }
    
    func makeCustomWhiteButton(){
        //initialitation orange color
        let orange = UIColor.orange
        
        //SIGN UP BUTTON
        layer.borderWidth   = 2
        backgroundColor     = .white
        layer.borderColor   = orange.cgColor
        layer.cornerRadius  = layer.frame.height/2
        layer.masksToBounds = true
        
        
        //Spacing for custom white button
        let signUpSpacing = 1.5
        let signUpAtributedString = NSMutableAttributedString(string: (titleLabel?.text)!)
        signUpAtributedString.addAttribute(NSAttributedString.Key.kern, value: signUpSpacing, range: NSMakeRange(0, signUpAtributedString.length))
        self.setAttributedTitle(signUpAtributedString, for: .normal)
    }
    
}
