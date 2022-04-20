//
//  PaintingsListView.swift
//  realm-eg
//
//  Created by Patrick Fuller on 4/19/22.
//

import SwiftUI
import RealmSwift

struct PaintingsListView: View {
    
    @Environment(\.realm) var realm
    
    @ObservedResults(Painting.self) var paintings
    
    var userLabel: String {
        realmApp.currentUser?.id ?? "no user"
    }
    
    var body: some View {
        ScrollView {
            VStack{
                Text("Signed in: \(realmApp.currentUser!.isLoggedIn.description)")
                Text("User: \(userLabel)")
                ForEach(paintings, id: \._id) { painting in
                    VStack{
                        Text("painting here: \(painting.paintingTitle)")
                        PaintingCardView(painting: painting)
                    }
                }
            }
            Button {
                addPainting()
            } label: {
                Text("Add painting")
            }
            
        }
        .navigationTitle("Paintings List")
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button {
                    realmApp.currentUser!.logOut { logoutError in
                        if let logoutError = logoutError {
                            print(logoutError.localizedDescription)
                        }
                    }
                } label: {
                    Text("Log Out")
                }
                
            }
        }
    }
    
    func addPainting() {
        
        
        try! realm.write {
            realm.add(
                Painting(value: [
                    "paintingTitle": "starry night",
                    "painterId": "vangogh44",
                    "width": 3,
                    "height": 3,
                    "likes": 0,
                    "imageDescription": "star",
                    "color": "blue"])
            )
        }
    }
}
