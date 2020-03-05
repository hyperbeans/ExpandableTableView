//
//  ExpandTableviewSectionHeader.swift
//  expandDemoTableview
//
//  Created by Hyperbeans on 04/03/20.
//  Copyright © 2019 Hyperbeans. All rights reserved.
//

import UIKit

class ExpandTableviewSectionHeader: UITableViewCell {
    
    //MARK:-Outlets
    
    @IBOutlet var lblPersonNumber: UILabel!
    @IBOutlet var tfFullName: UITextField!
    @IBOutlet var tfSelectEquipments: UITextField!
    
    //
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
