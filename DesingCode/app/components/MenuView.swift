//
//  MenuView.swift
//  DesingCode
//
//  Created by Vinicius Okamoto on 2023-08-23.
//

import SwiftUI

struct MenuView: View {
    @AppStorage("selectedMenu") var selectedDestination: Destination = .compass
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        List(navigationItems) {
            item in
            Button {
                selectedDestination = item.destination
                presentationMode.wrappedValue.dismiss()
            } label: {
                Label(item.title, systemImage: item.icon)
                    .foregroundColor(.primary).padding(8)
            }
        }
        .listStyle(.plain)
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
