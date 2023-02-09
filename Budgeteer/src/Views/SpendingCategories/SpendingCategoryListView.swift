//
//  SpendingCategoryListView.swift
//  Budgeteer
//
//  Created by Brian Dillman on 2/9/23.
//

import SwiftUI

struct SpendingCategoryListView: View {
    let categories: [SpendingCategory]
    
    var body: some View {
        List {
            ForEach(categories) { category in
                NavigationLink(destination: SpendingCategoryDetailView(category: category)) {
                    SpendingCategoryCardView(category: category)
                }
                .listRowBackground(category.theme.mainColor)
            }
        }
        .navigationTitle("Spending Categories")
        .toolbar {
            Button(action: {}) {
                Image(systemName: "plus")
            }
        }
    }
}

struct SpendingCategoryListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            SpendingCategoryListView(categories: SpendingCategory.sampleData)
        }
    }
}
