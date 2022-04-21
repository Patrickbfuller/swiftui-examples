//
//  FocusStateTest.swift
//  testingggg
//
//  Created by Mirna Helmy on 4/19/22.
//

import SwiftUI

//The @FocusState property wrapper is an extremely powerful new feature that allows us to programmatically manage whether or not a view is in focus. In practice, this will most often be associated with users clicking on TextFields.

struct FocusStateTest: View {
    
    enum OnboardingField: Hashable {
        case username
        case password
    }
    
    
  //  @FocusState private var usernameInFocus: Bool
    @State private var username: String = ""
  //  @FocusState private var passwordInFocus: Bool
    @State private var password: String = ""
    @FocusState private var fieldInFocus : OnboardingField?
    
    var body: some View {
        VStack(spacing: 30){
            TextField("Add your name here...", text: $username)
                .focused($fieldInFocus, equals: .username)
            //    .focused($usernameInFocus)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
            
           SecureField("Add your password here...", text: $password)
                .focused($fieldInFocus, equals: .password)
              //  .focused($passwordInFocus)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
            
            Button("SIGN UP 🚀") {
                let usernameIsValid = !username.isEmpty
                let passwordIsValid = !password.isEmpty
                if usernameIsValid && passwordIsValid {
                    print("SIGN UP")
                } else if usernameIsValid {
                    fieldInFocus = .password
//                    usernameInFocus = false
//                    passwordInFocus = true
                } else {
                    fieldInFocus = .username
//                    usernameInFocus = true
//                    passwordInFocus = false
                }
            }
            
//            Button("TOGGLE FOCUS STATE") {
//                usernameInFocus.toggle()
//            }
        }
        .padding(40)
//        .onAppear {
//            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
//                self.usernameInFocus = true
//            }
//        }
    }
}

struct FocusStateTest_Previews: PreviewProvider {
    static var previews: some View {
        FocusStateTest()
    }
}
