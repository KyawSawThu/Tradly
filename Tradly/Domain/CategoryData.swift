//
//  CategoryData.swift
//  Tradly
//
//  Created by KyawSawThu on 8/12/23.
//

import Foundation

struct CategoryData {
    let title: String
    let image: String
    
    static let values: [CategoryData] = [
        CategoryData(title: "Beverages", image: "cat.beverages"),
        CategoryData(title: "Bread & Bakery", image: "cat.breads"),
        CategoryData(title: "Vegetables", image: "cat.vegetables"),
        CategoryData(title: "Fruits", image: "cat.fruits"),
        CategoryData(title: "Egg", image: "cat.egg"),
        CategoryData(title: "Frozen Veg", image: "cat.frozenveg"),
        CategoryData(title: "Home Care", image: "cat.homecare"),
        CategoryData(title: "Pet Care", image: "cat.petcare")
    ]
}
