//
//  AppStorageTest.swift
//  testingggg
//
//  Created by Mirna Helmy on 4/18/22.
//

import SwiftUI
//AppStorage is used for view, but user default is for class
struct AppstorageTest: View {
    //AppStorage: is minidatabase save small pieces of information that will persist between sessions. This means that if a user closes the app and re-opens it, these values will still be saved! The @AppStorage property wrappers lets us easily add and save data into UserDefaults.
    
    
    
   // We don't need it after adding @AppStorage @State var currentUserName: String?
    
    //If I put the following line in any view, I'll still access appstorage
    //"name" is key
    @AppStorage("name") var currentUserName: String?
    
    var body: some View {
        VStack(spacing: 20) {
            Text(currentUserName ?? "Add Name Here")
            
            if let name = currentUserName {
                Text(name)
            }
            
            Button("Save".uppercased()) {
                let name = "Emily"
                currentUserName = name
            }
        }
    }
}

struct AppstorageTest_Previews: PreviewProvider {
    static var previews: some View {
        AppstorageTest()
    }
}
