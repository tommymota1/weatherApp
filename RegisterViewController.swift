//
//  RegisterViewController.swift
//  My_App
//
//  Created by Tommy  Mota on 9/19/18.
//  Copyright © 2018 Mota. All rights reserved.
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {
    
    @IBOutlet weak var btnRegister: UIButton!
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    
    @IBAction func btnRegister(_ sender: Any) {
    
    
        // TODO: perform some input validation here
        // check if the fields are not nil by using conditional binding
        if let email = txtEmail.text, let password = txtPassword.text //, let name = txtName.text
        {
            
            // Use the sample code from: https://firebase.google.com/docs/auth/ios/password-auth
            // Create a new account by passing the new user's email address and password to createUserWithEmail:email:password:completion:.
            
            Auth.auth().createUser(withEmail: email, password: password) { (user, error) in
                // ...
                // if the registration is successful then we should have a valid "user" value
                if user != nil {
                    // user is found go to the Weather Screen
                    let vc = self.storyboard?.instantiateViewController(withIdentifier: "welcome")
                    self.present(vc!, animated: true, completion: nil)
                }
                else{
                    //check error and show an error message
                    let alertController = UIAlertController(title: "Registration Failed!", message: (error?.localizedDescription)!, preferredStyle: UIAlertControllerStyle.alert)
                    
                    let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default) {
                        (result : UIAlertAction) -> Void in
                        print("OK")
                    }
                    
                    alertController.addAction(okAction)
                    self.present(alertController, animated: true, completion: nil)
                }
              }
            }
        }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        // implement code to dismiss the keyboard when the TetxField view is tapped on
        txtEmail.resignFirstResponder()
        txtPassword.resignFirstResponder()
        txtName.resignFirstResponder()
    }


}
