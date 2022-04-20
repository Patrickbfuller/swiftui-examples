//
//  realm_egApp.swift
//  realm-eg
//
//  Created by Patrick Fuller on 4/18/22.
//

import SwiftUI
import RealmSwift

let realmApp = RealmSwift.App(id: "realm-app-01-kdvhd")

@main
struct realm_egApp: SwiftUI.App {
    
    init() {
        if realmApp.currentUser?.isLoggedIn ?? false {
            realmApp.currentUser?.logOut { logoutError in
                if let logoutError = logoutError {
                    print(logoutError.localizedDescription)
                } else {
                    print("logged out previous user")
                }
            }
        } else {
            print("no previous logged in user")
        }
    }
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(realmApp)
            
        }
    }
}
