//
//  FruitModel.swift
//  Fruits
//
//  Created by Drashti on 08/12/23.

import SwiftUI

// MARK: - Fruits data model

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
