//
//  Constant.swift
//  Touchdown
//
//  Created by Pham Nguyen Phu on 05/04/2023.
//

import SwiftUI

// DATA

let players: [Player] = Bundle.main.decode("player.json")

let categories: [Category] = Bundle.main.decode("category.json")

let products: [Product] = Bundle.main.decode("product.json")

let brands: [Brand] = Bundle.main.decode("brand.json")

let sampleProduct: Product = products[0]

// COLOR
let colorBackground: Color = .init("ColorBackground")
let colorGray: Color = .init(.systemGray4)

// LAYOUT

let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}

// UX

// API

// IMAGE

// FONT

// STRING

let sizes: [String] = ["XS", "S", "M", "L", "XL"]

// MISC
