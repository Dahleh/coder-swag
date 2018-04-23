//
//  ProductVC.swift
//  coder-swag
//
//  Created by Faris Dahleh on 4/23/18.
//  Copyright © 2018 Faris Dahleh. All rights reserved.
//

import UIKit

class ProductVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource{

    
    
    @IBOutlet weak var productCollection: UICollectionView!
    
    private(set) public var products = [Product]()
    override func viewDidLoad() {
        super.viewDidLoad()
        productCollection.dataSource = self
        productCollection.delegate = self
    }

    func initProducts(category: Category){
        products = DataServices.instance.getProducts(forCategoryTitle: category.title)
        
        navigationItem.title = category.title
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell{
            let product = products[indexPath.row]
            cell.updateViews(product: product)
            return cell
    }
        return ProductCell()
    }

}
