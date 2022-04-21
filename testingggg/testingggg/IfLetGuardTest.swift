//
//  IfLetGuardTest.swift
//  testingggg
//
//  Created by Mirna Helmy on 4/12/22.
//

import SwiftUI

struct IfLetGuardTest: View {
    
    @State var currentUserID: String? = nil
    //  @State var currentUserID: String? = "testuser123"
    @State var displayText: String? = nil
    @State var isLoading: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Here we are practicing safe coding!")
                if let text = displayText {
                    Text(text)
                        .padding()
                        .font(.title)
                }
                // DO NOT USE ! EVER !!!
                // DO NOT FORCE UNWRAP VALUES
                
               // Text(displayText!)
                //    .font(.title)
                //    .padding()
                if isLoading {
                    ProgressView()
                }
                
                Spacer()
            }
            .navigationTitle("Safe Coding")
            .onAppear {
                loadData2()
            }
        }
    }
    
    func loadData() {
        if let userID = currentUserID {
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                displayText = "This is the new data! User id is: \(userID)"
                isLoading = false
            }
        } else {
            displayText = "Error. There is no User ID"
        }
    }
    
    //this function excatly the same like fun loadData, it's just using guard
    
    func loadData2() {
        guard let userID = currentUserID else {
            //what's gonna happen if the value is wrong
            displayText = "Error. There is no User ID"
            return
        }
        
        //what's gonna happen if the value is right
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            displayText = "This is the new data! User id is: \(userID)"
            isLoading = false
            
        }
    }
}

struct IfLetGuardTest_Previews: PreviewProvider {
    static var previews: some View {
        IfLetGuardTest()
    }
}
