//
//  SpendingCategoryDetailView.swift
//  Budgeteer
//
//  Created by Brian Dillman on 2/9/23.
//

import SwiftUI

struct SpendingCategoryDetailView: View {
    let category: SpendingCategory
    
    var body: some View {
        List {
            Section(header: Text("Spending Category Details")) {
                Label("TBD", systemImage: "pencil.tip")
                    .font(.headline)
                    .foregroundColor(.accentColor)
                HStack {
                    Label("Name", systemImage: "menucard")
                    Spacer()
                    Text("\(category.name)")
                }
                HStack {
                    Label("Budget", systemImage: "target")
                    Spacer()
                    Text("\(category.formattedTarget())")
                }
                HStack {
                    Label("Theme", systemImage: "paintpalette")
                    Spacer()
                    Text(category.theme.rawValue)
                        .padding(4)
                        .foregroundColor(category.theme.accentColor)
                        .background(category.theme.mainColor)
                        .cornerRadius(4)
                }
            }
        }
    }
}

struct SpendingCategoryDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            SpendingCategoryDetailView(category: SpendingCategory.sampleData[0])
        }
    }
}
