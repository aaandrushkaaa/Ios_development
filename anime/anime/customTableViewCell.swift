//
//  customTableViewCell.swift
//  anime
//
//  Created by Alex SAV on 03.04.2019.
//  Copyright © 2019 Andrew. All rights reserved.
//

import UIKit

class customTableViewCell: UITableViewCell {

    @IBOutlet weak var labelName: UILabel!

  
    @IBOutlet weak var imgVieww: UIImageView!
    @IBOutlet weak var labelCount: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func fillCell(with model: cellModel) {
        labelName.text = model.title
        labelCount.text = model.number
        imgVieww.image = UIImage(named: "img/" + model.img! + ".jpg")
        
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
