//
//  RecipeCell.swift
//  GoodEatins
//
//  Created by Owen Henley on 12/4/18.
//  Copyright © 2018 Owen Henley. All rights reserved.
//

import UIKit

class RecipeCell: UICollectionViewCell {
    
    @IBOutlet weak var foodImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        foodImage.layer.cornerRadius = 8
    }
    
    func configureCell(recipe: Recipe) {
        foodImage.image = UIImage(named: recipe.imageName)
    }
    
}
