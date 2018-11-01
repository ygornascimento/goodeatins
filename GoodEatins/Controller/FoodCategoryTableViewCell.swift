//
//  FoodCategoryTableViewCell.swift
//  GoodEatins
//
//  Created by Ygor Nascimento on 31/10/18.
//  Copyright © 2018 Ygor Nascimento. All rights reserved.
//

import UIKit

class FoodCategoryTableViewCell: UITableViewCell {

    @IBOutlet weak var tvcImage: UIImageView!
    @IBOutlet weak var tvcLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        tvcImage.layer.cornerRadius = 10
    }
    
    func configureCell(category: FoodCategory) {
        tvcImage.image = UIImage(named: category.imageName)
        tvcLabel.text = category.title
    }

}
