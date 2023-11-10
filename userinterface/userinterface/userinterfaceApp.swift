//
//  userinterfaceApp.swift
//  userinterface
//
//  Created by Mac Mini 5 on 7/11/2023.
//

import SwiftUI

@main
struct userinterfaceApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
