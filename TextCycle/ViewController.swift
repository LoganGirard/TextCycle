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
    
    
    @IBAction func submitProfileToParse() {
        println("pressed")
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

