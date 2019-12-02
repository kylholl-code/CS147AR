//
//  ViewController.swift
//  Audio Reality
//
//  Created by Kylie Holland on 11/11/19.
//  Copyright © 2019 audioreality. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var username: String = ""
    var password: String = ""
    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var passTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
       //set username text field color to grey
    userTextField.attributedPlaceholder = NSAttributedString(string: "Username",
        attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        
       //set password text field color to grey
    passTextField.attributedPlaceholder = NSAttributedString(string: "Password",
        attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
    //set username and password to textfield entries
        
        username = userTextField.text!
        password = passTextField.text!

    }


}

