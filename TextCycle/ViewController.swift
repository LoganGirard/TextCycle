//
//  ViewController.swift
//  TextCycle
//
//  Created by Logan Girard on 4/24/15.
//  Copyright (c) 2015 Logan Girard. All rights reserved.
//

import UIKit
import Parse

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
}

    @IBOutlet weak var FirstName: UITextField!
    
    @IBOutlet weak var LastName: UITextField!
    
    @IBOutlet weak var userName: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var userEmail: UITextField!
    
    
    @IBAction func submitProfileToParse() {
        var user = PFUser()
            user.username = userName.text
            user.password = password.text
            user.email = userEmail.text
        
        user.signUpInBackgroundWithBlock {
            (succeeded: Bool!, error: NSError!) -> Void in
            if error == nil {
                } else {
                }
        }
    }
    
    

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

