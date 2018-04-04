//
//  LoginViewController.swift
//  GT Athlete Manger
//
//  Created by Kasper Gammeltoft on 3/31/18.
//  Copyright © 2018 CS 3311 Team 28. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController
{
    @IBOutlet weak var authView: UIView!
    
    override func viewDidLoad() {
        // Setup code
        authView.layer.borderWidth = 2
        authView.layer.borderColor = UIColor.init(red: 177/255.0, green: 139/255.0, blue: 85/255.0, alpha: 1.0).cgColor
        
    }
    
    @IBAction func returnFrom(segue: UIStoryboardSegue){
        
    }
    
    
}
