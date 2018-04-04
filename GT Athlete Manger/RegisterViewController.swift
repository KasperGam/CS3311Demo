//
//  RegisterViewController.swift
//  GT Athlete Manger
//
//  Created by Kasper Gammeltoft on 3/30/18.
//  Copyright © 2018 CS 3311 Team 28. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController
{
    @IBOutlet weak var registerView: UIView!
    
    override func viewDidLoad() {
        registerView.layer.borderWidth = 2
        registerView.layer.borderColor = UIColor.init(red: 177/255.0, green: 139/255.0, blue: 85/255.0, alpha: 1.0).cgColor
    }

}
