//
//  CardView.swift
//  Budgeteer
//
//  Created by Brian Dillman on 2/6/23.
//

import SwiftUI

struct CardView: View {
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
            .foregroundColor(transaction.theme.accentColor)
        }
        .padding()
        .foregroundColor(transaction.theme.accentColor)
    }
}

struct CardView_Previews: PreviewProvider {
    static var transaction = Transaction.sampleData[0]
    static var previews: some View {
        CardView(transaction: transaction)
            .background(transaction.theme.mainColor)
            .previewLayout(.fixed(width: 400, height: 60))
    }
}
