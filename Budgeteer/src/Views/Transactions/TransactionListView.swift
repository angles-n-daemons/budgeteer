//
//  TransactionListView.swift
//  Budgeteer
//
//  Created by Brian Dillman on 2/9/23.
//

import SwiftUI

import SwiftUI

struct TransactionListView: View {
    let transactions: [Transaction]
    
    var body: some View {
        List {
            ForEach(transactions) { transaction in
                NavigationLink(destination: TransactionDetailView(transaction: transaction)) {
                    TransactionCardView(transaction: transaction)
                }
                .listRowBackground(Theme.teal.mainColor)
            }
        }
        .navigationTitle("Transactions")
        .toolbar {
            Button(action: {}) {
                Image(systemName: "plus")
            }
            .accessibilityLabel("New Transaction")
        }
    }
}


struct TransactionListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            TransactionListView(transactions: Transaction.sampleData)
        }
    }
}
