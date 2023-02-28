//
//  SolarGramApp.swift
//  SolarGram
//
//  Created by Jasmine Lee on 2/27/23.
//

import SwiftUI

@main
struct SolarGramApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
