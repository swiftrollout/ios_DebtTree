//
//  GoogleLoginViewController.swift
//  DebtTree
//
//  Created by Mike Yiu on 4/22/19.
//  Copyright © 2019 fungyung. All rights reserved.
//

import UIKit
import Firebase
import GoogleSignIn

class GoogleLoginViewController: UIViewController, GIDSignInUIDelegate {
    func sign(_ signIn: GIDSignIn!, didSignInFor user: GIDGoogleUser!, withError error: Error?) {
        // ...
        if let error = error {
            // ...
            return
        }
        
        guard let authentication = user.authentication else { return }
        let credential = GoogleAuthProvider.credential(withIDToken: authentication.idToken,
                                                       accessToken: authentication.accessToken)
        // ...
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        GIDSignIn.sharedInstance().uiDelegate = self as! GIDSignInUIDelegate
       
        
        // TODO(developer) Configure the sign-in button look/feel
        // ...
        
        
        GIDSignIn.sharedInstance().uiDelegate = self as! GIDSignInUIDelegate
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
