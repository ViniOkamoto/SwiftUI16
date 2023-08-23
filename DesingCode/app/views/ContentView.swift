//
//  ContentView.swift
//  DesingCode
//
//  Created by Vinicius Okamoto on 2023-08-09.
//

import CoreData
import SwiftUI

struct ContentView: View {
    @State var showMenu = false
    @AppStorage("selectedMenu") var selectedDestination: Destination = .compass
    @GestureState var press = false

    var longPress: some Gesture {
        LongPressGesture(minimumDuration: 1)
            .updating($press) { currentState, gestureState, _ in
                gestureState = currentState
            }.onEnded { _ in
                showMenu = true
            }
    }

    var body: some View {
        ZStack {
            Color(.systemBackground).ignoresSafeArea()
            switch selectedDestination {
                case .compass:
                    MessageView()
                case .card:
                    Text("Card")
                case .charts:
                    ChartView()
                case .radial:
                    Text("Radial")
                case .halfsheet:
                    MenuView()
                case .gooey:
                    Text("Goeey")
                case .actionbutton:
                    Text("Action Button")
            }
        }
        .gesture(longPress)
        .sheet(isPresented: $showMenu) {
            MenuView()
                .presentationDetents([.medium, .large])
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
