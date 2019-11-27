//
//  StudentSearch.swift
//  Audio Reality
//
//  Created by Kylie Holland on 11/14/19.
//  Copyright © 2019 audioreality. All rights reserved.
//

import UIKit
class StudentSearch: UIViewController, UITableViewDataSource,UITableViewDelegate {
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var searchTable: UITableView!
   var classTitle : String = ""
    let classNames = ["CS 147", "CS 106A", "Psych 124", "Math 21", "CME 100", "AA 100", "MS&E 193", "SpanLang 3", "SymSys 1", "TAPS 103"]
    var searchClass = [String]()
    var searching = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        //set search text to passcode
      
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if searching {
          return  searchClass.count
            
        } else {
            return classNames.count
        }
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        if searching {
             cell.textLabel?.text = searchClass[indexPath.row];
        }else{
            cell.textLabel?.text = classNames[indexPath.row];

        }
        classTitle = cell.textLabel!.text!
        return cell;
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
   
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
 override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     
    let destinationVC = segue.destination as! ClassSearched
destinationVC.classTitle = classTitle

       
    }
    
}

extension StudentSearch: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String){
        searchClass = classNames.filter({$0.lowercased().prefix(searchText.count) == searchText.lowercased()})
        searching = true
        searchTable.reloadData()
    }
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searching = false;
        searchBar.text = ""
        searchTable.reloadData()
    }
}
