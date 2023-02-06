//
//  ContentView.swift
//  B's Budget
//
//  Created by Brian Dillman on 2/5/23.
//

import SwiftUI

struct LandingView: View {
    var body: some View {
        VStack {
            ProgressView(value: 2614, total: 4200)
            HStack {
                VStack(alignment: .leading) {
                    Text("Month Spend")
                        .font(.caption)
                    Label("$2164", systemImage: "dollarsign.square.fill")
                }
                Spacer()
                VStack(alignment: .trailing) {
                    Text("Target Spend")
                        .font(.caption)
                    Label("$2250", systemImage: "dollarsign.square")
                }
            }
            .accessibilityElement(children: .ignore)
            .accessibilityLabel("Budget remaining")
            .accessibilityValue("$1315")
            Circle()
                .strokeBorder(lineWidth: 40)
            HStack {
                Text("February Spend")
                Spacer()
                Button(action: {}) {
                    Image(systemName: "circle.fill").foregroundColor(Color(red: 0, green: 0.8, blue: 0.65))
                }
            }
            
        }
        .padding()
    }
}

struct LandingView_Previews: PreviewProvider {
    static var previews: some View {
        LandingView()
    }
}
