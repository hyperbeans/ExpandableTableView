//
//  ExpandTableCellClass.swift
//  expandDemoTableview
//
//  Created by Hyperbeans on 04/03/20.
//  Copyright © 2019 Hyperbeans. All rights reserved.
//

import UIKit

class ExpandTableCellClass: UITableViewCell {

    //MARK:- Outlets
    @IBOutlet var lblNumberOfDay: UILabel!
    
    
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
