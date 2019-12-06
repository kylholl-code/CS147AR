//
//  ClassSearched.swift
//  Audio Reality
//
//  Created by Kylie Holland on 11/15/19.
//  Copyright © 2019 audioreality. All rights reserved.
//

import UIKit

class ClassSearched: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
   
    
    var TApickerData: [String] = [String]();
    var timePickerData: [String] = [String]();

    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var TimePicker: UIPickerView!
    @IBOutlet weak var TAPicker: UIPickerView!
    
    @IBOutlet weak var titleLabel: UILabel!
    var classTitle : String = ""
   
    let classNames = ["CS 147", "CS 106A", "Psych 124", "Math 21", "CME 100", "AA 100", "MS&E 193", "SpanLang 3", "SymSys 1", "TAPS 103"]
        var classInfo:[String:String
    ] = ["AA 100": "Introduction to AA", "CS 147" : "Intro to HCI Design", "Math 21": "Calculus", "SpanLang 3": "First-Year Spanish", "Psych 124":"Brain Plasticity", "CS 106A": "Intro to Programming", "MS&E 193": "Tech and National Security", "CME 100":"Linear Algebra"]
   
    var n = 0;
    override func viewDidLoad() {
        super.viewDidLoad()
        TAPicker.delegate = self
        TAPicker.dataSource = self
        TApickerData = ["Holland", "Rolon", "Kotipalli"]
        timePickerData = ["1 PM", "3PM"]
        titleLabel?.text = classTitle
        if classNames.contains(classTitle){
            titleLabel?.text = classTitle
        
        }
        else {
            titleLabel?.text = "Class not found"

        }
        
        let classInfoKeys = [String](classInfo.keys)
        for (key) in classInfoKeys{
            if (key == classTitle) {
                descriptionLabel?.text = classInfo[key]
            }
        }
}
    func numberOfComponents(in
        pickerView: UIPickerView) -> Int {
             return 1    }
         
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView.tag == 1 {
           
            return TApickerData.count
        } else{
            return timePickerData.count
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView.tag == 1 {
        return TApickerData[row]
        }else{
        return timePickerData[row]
        }
    }
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
  
        if segue.identifier == "QRCodeSegue" {
        let destinationVC = segue.destination as! QRCode
            destinationVC.className =  classTitle
        }
        else {
        }
       
    }
           
        }



