//
//  Transaction.swift
//  Budgeteer
//
//  Created by Brian Dillman on 2/6/23.
//

import Foundation

struct Transaction {
    var account: String
    var description: String
    var date: Date
    var amount: Float
    var theme: Theme
    
    func formattedAmount() -> String {
        String(format: "$%.02f", self.amount)
    }
}

func fromISODate(dateStr: String) -> Date {
    let formatter = DateFormatter()
    formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
    return formatter.date(from: dateStr)!
}

extension Transaction {
    static let sampleData: [Transaction] =
    [
        Transaction(
            account: "Checking",
            description: "Square Direct Deposit",
            date: fromISODate(dateStr: "2023-02-06T02:22:40Z"),
            amount: 3125.0,
            theme: .yellow
        ),
        Transaction(
            account: "Card",
            description: "Forma Pasta Factory",
            date: fromISODate(dateStr: "2023-02-06T02:22:40Z"),
            amount: -26.14,
            theme: .orange
        ),
        Transaction(
            account: "Card",
            description: "Vital Climbing Gym",
            date: fromISODate(dateStr: "2023-02-06T02:22:40Z"),
            amount: -135.0,
            theme: .poppy
        ),
    ]
}
