//
//  SignInView.swift
//  realm-eg
//
//  Created by Patrick Fuller on 4/19/22.
//

import SwiftUI
import RealmSwift

struct SignInView: View {
    
    @EnvironmentObject var realmApp: RealmSwift.App
    
    @State var isLoggingIn = false
    
    let userCredentials = Credentials.emailPassword(email: "cha@boi.com", password: "chaboi")
    
    var body: some View {
        VStack {
            if isLoggingIn {
                ProgressView()
            }
            Button {
                // action
                isLoggingIn = true
                realmApp.login(credentials: userCredentials) { result in
                    isLoggingIn = false
                    switch result {
                    case .failure(let error):
                        print("Login failed: \(error.localizedDescription)")
                    case .success(let user):
                        print("Successfully logged in as user \(user)")
                        // Now logged in, do something with user
                        // Remember to dispatch to main if you are doing anything on the UI thread
                    }
                }
            } label: {
                Text("Sign in")
            }
            .buttonStyle(.borderedProminent)
            .disabled(isLoggingIn)
        }
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
