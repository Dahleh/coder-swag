//
//  DataServices.swift
//  coder-swag
//
//  Created by Faris Dahleh on 4/18/18.
//  Copyright © 2018 Faris Dahleh. All rights reserved.
//

import Foundation

class DataServices {
    static let instance = DataServices()
    
    private let categories = [
    Category(title: "SHIRTS", imageName: "shirts.png"),
    Category(title: "HOODIES", imageName: "hoodies.png"),
    Category(title: "HATS", imageName: "hats.png"),
    Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    private let hats = [
        Product(title: "Devslopes Logo Graphic Beanie", price: "$18", imageName: "hat01.png"),
        Product(title: "Devslopes Logo Hat Black", price: "$22", imageName: "hat02.png"),
        Product(title: "Devslopes Logo Hat White", price: "$22", imageName: "hat03.png"),
        Product(title: "Devslopes Logo Snapback", price: "$20", imageName: "hat04.png")
    ]
    
    private let hoodies = [
    Product(title: "Devslopes Logo Hoodies Grey", price: "$32", imageName: "hoodie01.png"),
    Product(title: "Devslopes Logo Hoodies Red", price: "$32", imageName: "hoodie02.png"),
    Product(title: "Devslopes Hoodies Grey", price: "$32", imageName: "hoodie03.png"),
    Product(title: "Devslopes Hoodies Black", price: "$32", imageName: "hoodie04.png")
    ]

    private let shirts = [
        Product(title: "Devslopes Logo Shirt Black", price: "$18", imageName: "shirt01.png"),
        Product(title: "Devslopes Badge Shirt Light Grey", price: "$19", imageName: "shirt02.png"),
        Product(title: "Devslopes Logo Shirt Red", price: "$18", imageName: "shirt03.png"),
        Product(title: "Hustle Delegate Grey", price: "$18", imageName: "shirt04.png"),
        Product(title: "Kickflip Studios Black", price: "$18", imageName: "shirt05.png")
    ]
    
    private let digitalGoods = [Product]()

    func getCategories() -> [Category]{
        return categories
        
    }
    
    func getProducts(forCategoryTitle title:String) -> [Product] {
        switch title {
        case "Shirts":
            return getShirts()
        case "Hats":
            return getHats()
        case "Hoodies":
           return getHoodies()
        case "Digital":
            return getDigitalGoods()
        default:
            return getShirts()
        }
    }
    
    func getHats() -> [Product]{
        return hats
    }
    func getHoodies() -> [Product]{
        return hoodies
    }
    func getShirts() -> [Product]{
        return shirts
    }
    func getDigitalGoods() -> [Product]{
        return digitalGoods
    }
}
