//
//  SpendingCategoryCardView.swift
//  Budgeteer
//
//  Created by Brian Dillman on 2/9/23.
//

import SwiftUI

struct SpendingCategoryCardView: View {
    let category: SpendingCategory
    var body: some View {
        VStack (alignment: .leading) {
            Text(category.name)
            Spacer()
            HStack {
                Label("\(category.formattedTarget())", systemImage: "circle")
                Spacer()
                Text("tbd: This month spend")
            }
            .font(.caption)
            .foregroundColor(category.theme.accentColor)
        }
        .padding()
        .foregroundColor(category.theme.accentColor)
    }
}

struct SpendingCategoryCardView_Previews: PreviewProvider {
    static let category = SpendingCategory.sampleData[0]
    static var previews: some View {
        SpendingCategoryCardView(category: category)
            .background(category.theme.mainColor)
    }
}
