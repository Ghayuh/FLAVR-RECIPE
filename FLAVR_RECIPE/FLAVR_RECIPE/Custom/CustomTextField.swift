//
//  CustomTextField.swift
//  FLAVR_RECIPE
//
//  Created by Ghayuh Fernanda Putra on 05/07/19.
//  Copyright © 2019 Ghayuh Fernanda Putra. All rights reserved.
//

import UIKit

class CustomTextField: UITextField {

    override init(frame: CGRect) {
        super.init(frame: frame)
        defaultSetup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        defaultSetup()
    }
    
    func defaultSetup(){
        
        layer.borderWidth    = 1
        layer.borderColor    = UIColor.init(hex: "E0E0E0").cgColor
        
        //change foreground color of textField
        attributedPlaceholder = NSAttributedString(string: placeholder!, attributes: [NSAttributedString.Key.foregroundColor: UIColor(hex: "9E9E9E")])
        layer.sublayerTransform = CATransform3DMakeTranslation(12, 0, 0)
    }
}
