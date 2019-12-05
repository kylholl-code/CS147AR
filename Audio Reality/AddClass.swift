//
//  AddClass.swift
//  Audio Reality
//
//  Created by Kylie Holland on 11/30/19.
//  Copyright © 2019 audioreality. All rights reserved.
//

import UIKit

  var requests = [String:String]()

class AddClass: UIViewController {
    
    
    @IBOutlet weak var codeTextField: UITextField!
    
    @IBOutlet weak var numTextField: UITextField!
  
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
   
       override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //test for no entry, put up error message
        
        requests[codeTextField.text!] =  "pending"
        
          if segue.identifier == "confirmSegue" {
          let destinationVC = segue.destination as! confirmation
          }
          else {
          }
         
      }
}
