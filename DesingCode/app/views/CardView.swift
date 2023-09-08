//
//  CardView.swift
//  DesingCode
//
//  Created by Vinicius Okamoto on 2023-08-23.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        Grid {
            GridRow {
                card
                card
            }
            GridRow {
                card.gridCellColumns(2)
            }
        }.padding()
    }

    var card: some View {
        VStack(spacing: 12) {
            Image(systemName: "aspectratio")
                .frame(width: 44, height: 44)
                .foregroundStyle(
                    .linearGradient(
                        colors: [.white, .clear],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )
                .background(HexagonShape()
                    .stroke()
                    .foregroundStyle(
                        .linearGradient(
                            colors: [.white.opacity(0.5), .clear],
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        )
                    )
                )
                .background(HexagonShape()
                    .foregroundStyle(
                        .linearGradient(
                            colors: [.clear, .white.opacity(0.3)],
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        )
                    )
                )
            Text("UpTo8k resoultion"
                .uppercased()
            )
            .font(.title3.width(.condensed).bold())
            Text("From huge monitors to the phone, your wallpaper will look great anywhere.")
                .font(.footnote)
                .multilineTextAlignment(.center)
                .opacity(0.7)
                .frame(maxWidth: .infinity)
        }

        .padding()
        .padding(.vertical)
        .frame(maxHeight: .infinity)
        .background(.black)
        .foregroundColor(.white)
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke()
                .fill(.white.opacity(0.2)
                )
        )
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
