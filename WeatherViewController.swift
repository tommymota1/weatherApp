//
//  WeatherViewController.swift
//  My_App
//
//  Created by Tommy  Mota on 9/19/18.
//  Copyright © 2018 Mota. All rights reserved.
//

import UIKit
import Firebase

class WeatherViewController: UIViewController {
    
    let conditionRef = Database.database().reference().child("condition")
    @IBOutlet weak var conditionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        conditionRef.observe(.value) { (snap: DataSnapshot) in
            self.conditionLabel.text = (snap.value as AnyObject).description
        }
    }
    @IBAction func btnSunny(_ sender: Any) {
        conditionRef.setValue("Sunny")
    }
    
    @IBAction func btnFoggy(_ sender: Any) {
        conditionRef.setValue("Foggy")
    }
    
    
    
}
    
    
    
    

