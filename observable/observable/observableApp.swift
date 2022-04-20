//
//  observableApp.swift
//  observable
//
//  Created by Patrick Fuller on 3/7/22.
//

import SwiftUI

@main
struct observableApp: App {
    
    @StateObject var userSettings = UserSettings()
    
    var body: some Scene {
        
        WindowGroup {
            ContentView()
        }
    }
}
