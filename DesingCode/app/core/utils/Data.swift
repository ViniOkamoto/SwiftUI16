//
//  Data.swift
//  DesingCode
//
//  Created by Vinicius Okamoto on 2023-08-22.
//

import Foundation

struct NavigationItem: Identifiable, Hashable {
    var id = UUID()
    var title: String
    var icon: String
    var destination: Destination
}

var navigationItems = [
    NavigationItem(title: "Compass App", icon: "safari", destination: .compass),
    NavigationItem(title: "3D Card", icon: "lanyardcard", destination: .card),
    NavigationItem(title: "Radial Layout", icon: "clock", destination: .radial),
    NavigationItem(title: "Gooey Action Button", icon: "plus.circle", destination: .actionbutton),
    NavigationItem(title: "Gooey Menu", icon: "drop", destination: .gooey),
    NavigationItem(title: "Charts", icon: "chart.xyaxis.line", destination: .charts),
    NavigationItem(title: "Half Sheet", icon: "rectangle.portrait.bottomhalf.filled", destination: .halfsheet),
]

enum Destination: String {
    case compass
    case card
    case charts
    case radial
    case halfsheet
    case gooey
    case actionbutton
}
