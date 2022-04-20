//
//  RealmPaintingListView.swift
//  realm-eg
//
//  Created by Patrick Fuller on 4/19/22.
//

import SwiftUI
import RealmSwift

struct RealmPaintingListView: View {
    
    @AsyncOpen(
        appId: ThisApp.appId,
        partitionValue: ThisApp.partition,
        configuration: realmApp.currentUser!.configuration(partitionValue: "test-paintings"),
        timeout: 30_000)
    
    var asyncOpen
    
    var body: some View {
        
        switch asyncOpen {
            // Starting the Realm.asyncOpen process.
            // Show a progress view.
        case .connecting:
            ProgressView()
            // Waiting for a user to be logged in before executing
            // Realm.asyncOpen.
        case .waitingForUser:
            ProgressView("Waiting for user to log in...")
            // The realm has been opened and is ready for use.
            // Show the content view.
        case .open(let realm):
            PaintingsListView()
                .environment(\.realm, realm)
                .onAppear {
                    print(" * realm:  \(realm.configuration.description)")
                }
            // The realm is currently being downloaded from the server.
            // Show a progress view.
        case .progress(let progress):
            ProgressView(progress)
            // Opening the Realm failed.
            // Show an error view.
        case .error(let error):
            ErrorView(error: error)
        }
    }
}

struct RealmPaintingListView_Previews: PreviewProvider {
    static var previews: some View {
        RealmPaintingListView()
    }
}
