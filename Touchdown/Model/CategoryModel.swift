//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Pham Nguyen Phu on 06/04/2023.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
