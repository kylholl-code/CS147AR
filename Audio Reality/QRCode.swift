//
//  QRCode.swift
//  Audio Reality
//
//  Created by Kylie Holland on 11/22/19.
//  Copyright © 2019 audioreality. All rights reserved.
//

import UIKit

class QRCode: UIViewController {
    var className : String!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         
        let destinationVC = segue.destination as! ClassSearched
    destinationVC.classTitle = className

           
        }
}
