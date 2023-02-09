//
//  TransactionDetailView.swift
//  Budgeteer
//
//  Created by Brian Dillman on 2/9/23.
//

import SwiftUI

struct TransactionDetailView: View {
    let transaction: Transaction
    
    var body: some View {
        List {
            Section(header: Text("Transaction Info")) {
                Label("TBD", systemImage: "pencil.tip")
                    .font(.headline)
                    .foregroundColor(.accentColor)
                HStack {
                    Label("Amount", systemImage: "dollarsign.circle")
                    Spacer()
                    Text("\(transaction.formattedAmount())")
                }
                .accessibilityElement(children: .combine)
            }
        }
    }
}

struct TransactionDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            TransactionDetailView(transaction: Transaction.sampleData[0])
        }
    }
}
