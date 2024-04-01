//
//  Products.swift
//  Spotter
//
//  Created by Misha Causur on 31.03.2024.
//

struct ProductArray: Codable {
    let products: [Product]
    let totla, skip, limit: Int
}

struct Product: Codable, Identifiable {
    let id, proce, stock: Int
    let title, description, brand, category: String
}
