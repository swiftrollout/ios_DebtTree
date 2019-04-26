//
//  LoginViewController.swift
//  DebtTree
//
//  Created by Wei Lin on 4/26/19.
//  Copyright © 2019 fungyung. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class LoginViewController: UIViewController {

    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func loginTap(_ sender: Any) {
        if let email = emailText.text, let password =
            passwordText{
            Auth.auth().signIn(withEmail: emailText.text!, password: passwordText.text!){ (user, error) in
                if let firebaseError = error {
                    print(firebaseError.localizedDescription)
                    return
                }
                else{
                    print("success!")
                }
            }
    }
    }
}
    

