//
//  ExpandVC.swift
//  expandDemoTableview
//
//  Created by Hyperbeans on 04/03/20.
//  Copyright © 2019 Hyperbeans. All rights reserved.
//

import UIKit

class ExpandVC: UIViewController {

    //MARK:- Outlets
    @IBOutlet var heightTblViewExpand: NSLayoutConstraint!
    @IBOutlet var tblViewExpand: UITableView!
    @IBOutlet var tfNumberOfDays: UITextField!
    @IBOutlet var btnNumberOfDays: UIButton!
    @IBOutlet var btnCheckUncheck: UIButton!
    
    //MARK:- Properties
    var intNumberOfRow = 0
    var intNumberOfSection = 0
    var arrNoOfDays = [["day":"Day 1","drop_off_date":"Oct 21, 2019","pickup_date":"Oct 22, 2019","drop_off_location":"Echoland","pickup_location":"test","drop_off_time":"11:00-11:15 AM","pickup_time":"11:00-11:15 AM"],["day":"Day 1","drop_off_date":"Oct 21, 2019","pickup_date":"Oct 22, 2019","drop_off_location":"Echoland","pickup_location":"test","drop_off_time":"11:00-11:15 AM","pickup_time":"11:00-11:15 AM"]]
    var arrEquipments = [["name":"Banana Boat","is_selected":"0"],["name":"Boat A","is_selected":"0"],["name":"Life Jackets","is_selected":"0"],["name":"SKI","is_selected":"0"]]
    var arrSelectedEquipments = [[String:Any]]()
    var arrPersonData = [[String:Any]]()
    
    
    //MARK:- View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        /// Set the Static data
        arrPersonData = [["person_no":"person 1","full_name":"abc","select_equipment": self.arrSelectedEquipments,"no_of_days": self.arrNoOfDays]]
        setTableHeight()
    }
    
     //MARK:- Actions
    //MARK:Select Number Of Days
    @IBAction func btnNumberOfDays(_ sender: Any) {
        intNumberOfRow += 1
    }
    
    //MARK:DeletePerson
    @IBAction func btnDeletePerson(_ sender: UIButton) {
        intNumberOfSection  -= 1
        setTableHeight()
    }
    
    //MARK:Add Person
    @IBAction func btnAddPerson(_ sender: Any) {
        intNumberOfSection  += 1
        setTableHeight()
    }
    
    //MARK:Check uncheck
    @IBAction func btnCheckUncheck(_ sender: Any) {
        
    }
}
