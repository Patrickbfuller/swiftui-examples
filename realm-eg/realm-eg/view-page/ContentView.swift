//
//  ContentView.swift
//  realm-eg
//
//  Created by Patrick Fuller on 4/18/22.
//

import SwiftUI
import RealmSwift

struct ContentView: View {
    
    @EnvironmentObject var realmApp: RealmSwift.App
    
    var body: some View {
        NavigationView {
            VStack {
                if realmApp.currentUser?.isLoggedIn ?? false {
                    PaintingsListView()
                } else {
                    SignInView().environmentObject(realmApp)
                }
            }
            .navigationTitle("Content")
        }
        .navigationViewStyle(.stack)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
