//
//  DataModelsTest.swift
//  testingggg
//
//  Created by Mirna Helmy on 4/13/22.
//

import SwiftUI

//In this video we will create and implement a custom "model" into our application. These custom data types are often required in our applications because we can include many different data points into a single model. For example, a User's data might need to include more than just their name. By building a custom data type, we can include their name, username, email, bio, etc. all in a single object! We will be building an "immutable struct" using a struct and let constants and then incorporate it into our SwiftUI application.


struct UserModel: Identifiable {
    let id: String = UUID().uuidString
    let displayName: String
    let userName: String
    let followerCount: Int
    let isVerified: Bool
}

struct DataModelsTest: View {
   // @State var users: [String] = [
  //  "Nick", "Emily", "Samantha", "Chris"
   // ]
    
    @State var users: [UserModel] = [
        UserModel(displayName: "Nick", userName: "nick123" , followerCount: 100, isVerified: true),
        UserModel(displayName: "Emily", userName: "itsmily134" , followerCount: 55, isVerified: false),
        UserModel(displayName: "Samantha", userName: "ninja3" , followerCount: 355, isVerified: false),
        UserModel(displayName: "Chris", userName: "chris323" , followerCount: 88, isVerified: true)
    ]

    
    var body: some View {
        NavigationView {
            List {
                ForEach(users) { user in
                    HStack(spacing: 15.0) {
                        Circle()
                            .frame(width: 35, height: 35)
                        VStack(alignment: .leading) {
                            Text(user.displayName)
                                .font(.headline)
                            Text("@\(user.userName)")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                        Spacer()
                        
                        if user.isVerified {
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(.blue)
                        }
                     
                        VStack {
                            Text("\(user.followerCount)")
                                .font(.headline)
                            Text("Followers")
                                .foregroundColor(.gray)
                                .font(.caption)
    
                        }
                       // Text(name)
                    }
                    .padding(.vertical, 10)
                }
                
                
                
                
                //ForEach(users, id: \.self) { name in
//                    HStack(spacing: 15.0) {
//                        Circle()
//                            .frame(width: 35, height: 35)
//                        Text(name)
//                    }
//                    .padding(.vertical, 10)
 //               }
            }
            .navigationTitle("Users")
        }
    }
}

struct DataModelsTest_Previews: PreviewProvider {
    static var previews: some View {
        DataModelsTest()
    }
}
