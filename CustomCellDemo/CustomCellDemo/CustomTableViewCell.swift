//
//  CustomTableViewCell.swift
//  CustomCellDemo
//
//  Created by djstava on 2/23/16.
//  Copyright © 2016 djstava. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var cellImagge: UIImageView!
    @IBOutlet weak var cellEnglish: UILabel!
    @IBOutlet weak var cellChinese: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
