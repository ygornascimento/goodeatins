//
//  RecipeCell.swift
//  GoodEatins
//
//  Created by Ygor Nascimento on 03/11/18.
//  Copyright © 2018 Ygor Nascimento. All rights reserved.
//

import UIKit

class RecipeCell: UICollectionViewCell {
    

    @IBOutlet weak var recipeImg: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        recipeImg.layer.cornerRadius = 10
    }
    
    func configureCell(recipe: Recipe) {
        recipeImg.image = UIImage(named: recipe.imageName)
    }
}
