//
//  LoginTextField.swift
//  My_App
//
//  Created by Tommy  Mota on 9/18/18.
//  Copyright © 2018 Mota. All rights reserved.
//

import UIKit

@IBDesignable
class ViewTextField: UITextField {
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.layer.borderColor = UIColor(white: 231 / 255, alpha: 1).cgColor
        self.layer.borderWidth = 1
    }
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: 8, dy: 7)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return textRect(forBounds: bounds)
    }

}
