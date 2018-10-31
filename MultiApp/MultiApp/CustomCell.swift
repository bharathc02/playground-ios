//
//  CustomCell.swift
//  TableApp
//
//  Created by Chandramouli, Bharath Kumar on 10/19/16.
//  Copyright © 2016 Chandramouli, Bharath Kumar. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet var mainImage1: UIImageView!
    @IBOutlet var mainText1: UILabel!
    
    @IBOutlet var sideImage1: UIImageView!
    @IBOutlet var sideText1: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
