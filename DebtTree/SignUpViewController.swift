//
//  SignUpViewController.swift
//  DebtTree
//
//  Created by Wei Lin on 4/25/19.
//  Copyright © 2019 fungyung. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var fNameText: UITextField!
    @IBOutlet weak var lNameText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func createAccount(_ sender: Any) {
        if let email = emailText.text, let password =
            passwordText{
        Auth.auth().createUser(withEmail: emailText.text!, password: passwordText.text!){ (user, error) in
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
    

