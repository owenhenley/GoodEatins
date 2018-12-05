//
//  CatagoryCell.swift
//  GoodEatins
//
//  Created by Owen Henley on 12/4/18.
//  Copyright © 2018 Owen Henley. All rights reserved.
//

import UIKit

class CatagoryCell: UITableViewCell {

    @IBOutlet weak var catagoryImage: UIImageView!
    @IBOutlet weak var catagoryTitle: UILabel!
    
    override func awakeFromNib() {
        catagoryImage.layer.cornerRadius = 10
    }
    
    func configureCell(category: FoodCategory) {
        catagoryImage.image = UIImage(named: category.imageName)
        catagoryTitle.text = category.title
    }

}
