//
//  MenuVC.swift
//  GoodEatins
//
//  Created by Owen Henley on 12/4/18.
//  Copyright © 2018 Owen Henley. All rights reserved.
//

import UIKit

class MenuVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!

    let data = DataSet()
    var categoryToPass: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.categories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "catagoryCell", for: indexPath) as? CatagoryCell {
            cell.configureCell(category: data.categories[indexPath.row])
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        categoryToPass = data.categories[indexPath.row].title
        performSegue(withIdentifier: "toDetails", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destinationVC = segue.destination as? RecipiesVC {
            destinationVC.selectedCategory = categoryToPass
        }
        
    }
}
