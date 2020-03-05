//
//  ExpandVCExtension.swift
//  expandDemoTableview
//
//  Created by Hyperbeans on 04/03/20.
//  Copyright © 2019 Hyperbeans. All rights reserved.
//

import Foundation
import UIKit

//MARK:- Supporting Methods
extension ExpandVC{
    
    //expand collapse table height
    func setTableHeight(){
        self.tblViewExpand.reloadData()
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
            self.heightTblViewExpand.constant = self.tblViewExpand.contentSize.height
            self.tblViewExpand.reloadData()
        }
    }
}


//MARK:- TableView Delegate DataSource
extension ExpandVC: UITableViewDelegate, UITableViewDataSource{
    //Number OF Days
    func numberOfSections(in tableView: UITableView) -> Int {
        return intNumberOfSection
    }
    //Number Of person
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return intNumberOfRow
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 176.0
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 223.0
    }
    
    //Days info
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tblViewExpand.dequeueReusableCell(withIdentifier: "ExpandTableCellClass") as! ExpandTableCellClass
        cell.lblNumberOfDay.text =  "Day \(indexPath.row+1)"
        return cell
    }
    
    //Title for Days
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerCell = tblViewExpand.dequeueReusableCell(withIdentifier: "ExpandTableviewSectionHeader") as! ExpandTableviewSectionHeader
        headerCell.lblPersonNumber.text = "Person \(section+1)"
        return headerCell.contentView
    }
    
}
