//
//  pokedexApp.swift
//  pokedex
//
//  Created by Zahra chouchane on 22/6/2022.
//

import SwiftUI

@main
struct pokedexApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
