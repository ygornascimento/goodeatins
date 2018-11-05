//
//  HomeVC.swift
//  GoodEatins
//
//  Created by Ygor Nascimento on 27/10/18.
//  Copyright © 2018 Ygor Nascimento. All rights reserved.
//

import UIKit

class HomeVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var data = DataSet()
    var categoryToPass: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.categories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let protoCell = tableView.dequeueReusableCell(withIdentifier: "foodCategoryTVCell", for: indexPath) as? FoodCategoryTableViewCell {
            protoCell.configureCell(category: data.categories[indexPath.row])
            
            return protoCell
        }
        
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        categoryToPass = data.categories[indexPath.row].title
        performSegue(withIdentifier: "toRecipesCollection", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let recipesSelectionVC = segue.destination as? RecipesSelectionVC {
            recipesSelectionVC.selectedCategory = categoryToPass
        }
    }

}

