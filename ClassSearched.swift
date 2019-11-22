//
//  ClassSearched.swift
//  Audio Reality
//
//  Created by Kylie Holland on 11/15/19.
//  Copyright © 2019 audioreality. All rights reserved.
//

import UIKit

class ClassSearched: UIViewController {
    var dataSourceArray : NSMutableArray!
    var searchTerm:String! = ""
    let classNames = ["CS 147", "CS 106A", "Psych 124", "Math 21", "CME 100", "AA 100", "MS&E 193", "SpanLang 3", "SymSys 1", "TAPS 103"]
    let classTitles = ["AA 100: Introduction to Aeronautics & Astronautics", "CS 147: Introduction to Human Computer Interaction Design", "Math 19: Calculus", "SpanLang 3: First-Year Spanish, Third Quarter", "SymSys 1: Minds and Machines", "TAPS 103: Beginning Improvising"]
    @IBOutlet weak var titleLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel?.text = sea
        rchTerm
        if classNames.contains(searchTerm){
            titleLabel?.text = searchTerm

        }
        else {
            titleLabel?.text = "Class not found"

        }
        // Do any additional setup after loading the view.
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
