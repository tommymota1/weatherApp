//
//  ViewController.swift
//  My_App
//
//  Created by Tommy  Mota on 9/18/18.
//  Copyright © 2018 Mota. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

@IBOutlet weak var passwordButton: UIButton!
    
let yourAttributes : [NSAttributedStringKey: Any] = [
    NSAttributedStringKey.font : UIFont.systemFont(ofSize: 14),
    NSAttributedStringKey.foregroundColor : UIColor.white,
    NSAttributedStringKey.underlineStyle : NSUnderlineStyle.styleSingle.rawValue]
//.styleDouble.rawValue, .styleThick.rawValue, .styleNone.rawValue

override func viewDidLoad() {
    super.viewDidLoad()
    
    let attributeString = NSMutableAttributedString(string: "Create a New Account",
                                                    attributes: yourAttributes)
    passwordButton.setAttributedTitle(attributeString, for: .normal)
}
}
