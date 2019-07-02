//
//  CustomLabel.swift
//  FLAVR_RECIPE
//
//  Created by Ghayuh Fernanda Putra on 03/07/19.
//  Copyright © 2019 Ghayuh Fernanda Putra. All rights reserved.
//

import UIKit

class CustomLabel: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        defaultSetup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        defaultSetup()
    }
    
    func defaultSetup(){
        let labelSpacing = 1
        let labelAtributedString = NSMutableAttributedString(string: text!)
        labelAtributedString.addAttribute(NSAttributedString.Key.kern, value: labelSpacing, range: NSMakeRange(0, labelAtributedString.length))
        self.attributedText = labelAtributedString
    }
    
    func setSpacing(space: CGFloat){
        let labelAtributedString = NSMutableAttributedString(string: text!)
        labelAtributedString.addAttribute(NSAttributedString.Key.kern, value: space, range: NSMakeRange(0, labelAtributedString.length))
        self.attributedText = labelAtributedString
    }

}
