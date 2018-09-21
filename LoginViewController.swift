
//  LoginViewController.swift
//  My_App
//
//  Created by Tommy  Mota on 9/19/18.
//  Copyright © 2018 Mota. All rights reserved.
//

import UIKit
import Firebase // TODO 1. Add the Firebase import

class LoginViewController: UIViewController {
    
    
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var btnLogin: UIButton!
    @IBOutlet weak var btnForgot: UIButton!
    
    @IBAction func btnLogin(_ sender: Any) {
        
        //NOTE: When a user signs in to your app, pass the user's email address and password to signInWithEmail:email:password:completion:
        
        // TODO: perform some input validation here
        // check if the fields are not nil by using conditional binding
        if let email = txtEmail.text, let password = txtPassword.text
        {
            // Use the sample code from: https://firebase.google.com/docs/auth/ios/password-auth
            Auth.auth().signIn(withEmail: email, password: password) { (user, error) in
                
                // if the signin is successful then we should have a valid "user" value
                if user != nil {
                    // user is found go to the Weather screen: present it modally (with no back button)
                    let vc = self.storyboard?.instantiateViewController(withIdentifier: "welcome")
                    // in this case, "welcome" should be your landing pages' storyboard id
                    self.present(vc!, animated: true, completion: nil)
                }
                else{
                    // TODO: check error and show an error message, use the example on the registration page
                 }
            }
        }
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        // implement code to dismiss the keyboard when the TextField view is tapped on
        txtEmail.resignFirstResponder()
        txtPassword.resignFirstResponder()
    }
}



