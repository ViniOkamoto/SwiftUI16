//
//  DesingCodeApp.swift
//  DesingCode
//
//  Created by Vinicius Okamoto on 2023-08-09.
//

import SwiftUI

@main
struct DesingCodeApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
