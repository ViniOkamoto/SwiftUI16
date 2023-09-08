//
//  GridView.swift
//  DesingCode
//
//  Created by Vinicius Okamoto on 2023-08-23.
//

import SwiftUI

struct GridView: View {
    var body: some View {
        Grid(alignment: .leading, horizontalSpacing: 12, verticalSpacing: 12) {
            GridRow {
                Text("Votes")
                    .gridColumnAlignment(.trailing)
                    .gridCellColumns(2)

                Text("Rating")
                    .gridColumnAlignment(.trailing)
            }
            .font(.footnote)
            .foregroundColor(.secondary)

            Divider()
                .gridCellUnsizedAxes(.horizontal)
            GridRow {
                Text("4")
                    .frame(width: 30, alignment: .trailing)
                ProgressView(value: 0.04)
                    .frame(maxWidth: .infinity)
                // constrain the grid to the minimum size available in the axis
                //                    .gridCellUnsizedAxes(.horizontal)
                RatingView(rating: 1)
            }
            GridRow {
                Text("21").frame(width: 30, alignment: .trailing)
                ProgressView(value: 0.21)
                    .frame(maxWidth: .infinity)

                RatingView(rating: 2)
            }
            GridRow {
                Text("5").frame(width: 30, alignment: .trailing)
                ProgressView(value: 0.21)
                    .frame(maxWidth: .infinity)

                RatingView(rating: 3)
            }
            GridRow {
                Text("52").frame(width: 30, alignment: .trailing)
                ProgressView(value: 0.52)
                    .frame(maxWidth: .infinity)
                RatingView(rating: 4)
            }
            GridRow {
                Text("67").frame(width: 30, alignment: .trailing)
                ProgressView(value: 0.67)
                    .frame(maxWidth: .infinity)
                RatingView(rating: 5)
            }
        }
        .padding(20)
    }
}

struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        GridView()
    }
}

struct RatingView: View {
    var rating = 3
    let list = [1, 2, 3, 4, 5]

    var body: some View {
        HStack(spacing: 0) {
            ForEach(list, id: \.self) { item in
                Image(systemName: rating >= item ? "star.fill" : "star")
            }
        }
    }
}
