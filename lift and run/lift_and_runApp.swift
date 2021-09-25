//
//  lift_and_runApp.swift
//  lift and run
//
//  Created by Raymond Yeo on 9/18/21.
//

import SwiftUI

@main
struct lift_and_runApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            HomeTabView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
