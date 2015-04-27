//
//  LoginView.swift
//  TextCycle
//
//  Created by Logan Girard on 4/26/15.
//  Copyright (c) 2015 Logan Girard. All rights reserved.
//

import UIKit
import Parse
import ParseUI

class LoginView: UIViewController, PFLogInViewControllerDelegate,
    PFSignUpViewControllerDelegate {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        var user = PFUser.currentUser()
        if user != nil {
            println(user)
           
        } else {
            println("No Logged in user")
            var login: PFLogInViewController = PFLogInViewController()
            login.fields = PFLogInFields.UsernameAndPassword | PFLogInFields.LogInButton |        PFLogInFields.SignUpButton
            self.presentViewController(login, animated: true, completion: nil)
        }
    }
    
    //MARK: Parse Login

    func logInViewController(logInController: PFLogInViewController!, shouldBeginLogInWithUsername username: String!, password: String!) -> Bool {
        return true
    }
    
    func logInViewController(logInController: PFLogInViewController!, didLogInUser user: PFUser!) {
        
    }
    
    func logInViewController(logInController: PFLogInViewController!, didFailToLogInWithError error: NSError!) {
    
    }
    
    //Mark: Parse Signup
    
    func signUpViewController(signUpController: PFSignUpViewController!, shouldBeginSignUp info: [NSObject : AnyObject]!) -> Bool {
        return true
    }
    
    func signUpViewController(signUpController: PFSignUpViewController!, didSignUpUser user: PFUser!) {
        
    }
    
    func signUpViewController(signUpController: PFSignUpViewController!, didFailToSignUpWithError error: NSError!) {
        
    }
    
    func signUpViewControllerDidCancelSignUp(signUpController: PFSignUpViewController!) {
        
    }
}