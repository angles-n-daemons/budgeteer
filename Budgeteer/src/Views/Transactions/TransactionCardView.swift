//
//  TransactionCardView.swift
//  Budgeteer
//
//  Created by Brian Dillman on 2/9/23.
//

import SwiftUI

struct TransactionCardView: View {
    let transaction: Transaction
    var body: some View {
        VStack (alignment: .leading) {
            Text(transaction.account)
                .font(.headline)
            Spacer()
            HStack {
                Label("\(transaction.formattedAmount())", systemImage: "arrowshape.left")
                    .accessibilityLabel("\(transaction.formattedAmount()) dollars")
                Spacer()
                Label("\(transaction.description)", systemImage: "banknote")
                    .accessibilityLabel("\(transaction.formattedAmount())")
                    .labelStyle(.trailingIcon)
            }
            .font(.caption)
        }
        .padding()
    }
}

struct TransactionCardView_Previews: PreviewProvider {
    static var transaction = Transaction.sampleData[0]
    static var previews: some View {
        TransactionCardView(transaction: transaction)
            .previewLayout(.fixed(width: 400, height: 60))
    }
}

