//
//  CustomCell.swift
//  TableViewApp
//
//  Created by Darkhan on 26.01.17.
//  Copyright © 2017 SDU. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet weak var myImage: UIImageView!
    
    @IBOutlet weak var myNameSurname: UILabel!
    
    @IBOutlet weak var myGoals: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
