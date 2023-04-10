//
//  Shop.swift
//  Touchdown
//
//  Created by Pham Nguyen Phu on 07/04/2023.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
