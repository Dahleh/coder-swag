//
//  CategoryCell.swift
//  coder-swag
//
//  Created by Faris Dahleh on 4/18/18.
//  Copyright © 2018 Faris Dahleh. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!

    func updateView(category: Category){
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }
}
