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
            
           
        } else {
            println("No Logged in user")
            var loginViewController = PFLogInViewController()
            loginViewController.fields = PFLogInFields.UsernameAndPassword | PFLogInFields.LogInButton | PFLogInFields.SignUpButton
            
            loginViewController.delegate = self
            
            var signupViewController = PFSignUpViewController()
            signupViewController.delegate = self
            
            self.presentViewController(loginViewController, animated: true, completion: nil)
        }
    }
    
    //MARK: Parse Login

    func logInViewController(logInController: PFLogInViewController, shouldBeginLogInWithUsername username: String, password: String) -> Bool {
        
        if(!username.isEmpty || !password.isEmpty){
            return true
        }else{
            return false
        }
        
    }
    
    func logInViewController(logInController: PFLogInViewController, didLogInUser user: PFUser) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    func logInViewController(logInController: PFLogInViewController, didFailToLogInWithError error: NSError?) {
        println("failed to login")
    }
    
    //Mark: Parse Signup
    
    func signUpViewController(signUpController: PFSignUpViewController, shouldBeginSignUp info: [NSObject : AnyObject]) -> Bool {
        return true 
    }
    
    func signUpViewController(signUpController: PFSignUpViewController, didSignUpUser user: PFUser) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    func signUpViewController(signUpController: PFSignUpViewController, didFailToSignUpWithError error: NSError?) {
        println("failed to sign up")
    }
    
    func signUpViewControllerDidCancelSignUp(signUpController: PFSignUpViewController) {
        println("user dismissed signup")
    }
   
    //Mark: Actions
    
    @IBAction func logoutUser(sender: UIButton) {
        
        PFUser.logOut()
    }
    
    
    @IBOutlet weak var isbn: UITextField!
    
    @IBOutlet weak var image: UIImageView!
    
    @IBAction func searchBook(sender: AnyObject) {
        let subtitleCell = UITableViewStyle(rawValue: 1)
        var aisbnValue: String! = isbn.text!
        var aclassName: String! = "Books"
        var bookTableQuery = BookSearchResultTable(style: subtitleCell!, className: aclassName, isbnValue: aisbnValue)
        self.presentViewController(bookTableQuery, animated: true, completion: nil)
        
    }
    
    
}