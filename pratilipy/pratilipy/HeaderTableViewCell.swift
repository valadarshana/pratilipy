//
//  HeaderTableViewCell.swift
//  pratilipy
//
//  Created by Vijay Parmar on 15/10/20.
//  Copyright © 2020 Dashu. All rights reserved.
//

import UIKit

class HeaderTableViewCell: UITableViewCell {

    @IBOutlet weak var lblTitle :UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
