//
//  RecipeDetailsVC.swift
//  GoodEatins
//
//  Created by Owen Henley on 12/4/18.
//  Copyright © 2018 Owen Henley. All rights reserved.
//

import UIKit

class RecipeDetailsVC: UIViewController {
    
    @IBOutlet weak var foodImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var instructions: UILabel!
    
    var selectedRecipe: Recipe!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        foodImage.image = UIImage(named: selectedRecipe.imageName)
        titleLabel.text = selectedRecipe.title
        instructions.text = selectedRecipe.instructions
    }
}
