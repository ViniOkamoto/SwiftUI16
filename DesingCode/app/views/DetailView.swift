//
//  DetailView.swift
//  DesingCode
//
//  Created by Vinicius Okamoto on 2023-08-23.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        ScrollView {
            Text("12 Transactions".uppercased())
                .font(.subheadline)
                .fontWeight(.medium)
                .foregroundColor(.secondary)
                .padding(.top, 20)
            Text("Enterteinament")
                .font(
                    .largeTitle.width(.expanded)
                        .weight(.bold
                        )
                )
            ViewThatFits {
                VStack {
                    ChartView()
                    GridView().frame(width: 400)
                }
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
