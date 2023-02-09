//
//  SpendingCategory.swift
//  Budgeteer
//
//  Created by Brian Dillman on 2/9/23.
//

import Foundation

struct SpendingCategory: Identifiable {
    let id: UUID
    let name: String
    let target: Float
    let theme: Theme
    
    init(id: UUID=UUID(), name: String, target: Float, theme: Theme) {
        self.id = id
        self.name = name
        self.target = target
        self.theme = theme
    }
    
    func formattedTarget() -> String {
        String(format: "$%.02f", self.target)
    }
}

extension SpendingCategory {
    static let sampleData: [SpendingCategory] = [
        SpendingCategory(name: "Rent", target: 2500, theme: .navy),
        SpendingCategory(name: "Food", target: 1000, theme: .lavender),
        SpendingCategory(name: "Utilities", target: 400, theme: .seafoam),
        SpendingCategory(name: "Health and Fitness", target: 425, theme: .magenta)
    ]
}
