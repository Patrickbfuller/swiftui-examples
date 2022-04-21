//
//  ControlFlow.swift
//  testingggg
//
//  Created by Mirna Helmy on 3/22/22.
//

import SwiftUI

struct ControlFlow: View {
    @State var darkModeEnabled = false
    
    var backgroundColor: Color {
        return darkModeEnabled ? .black : .white
    }
    
    var body: some View {
        VStack {
          
                Text("Settings")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .foregroundColor(darkModeEnabled ? Color.white : Color.black)
                    .padding()
         
            Text("Appearance")
                .font(.largeTitle)
            //ternary statment
            //same exact thing as if statement
            // what comes after '?' is the success case
            //what comes after ':' is the failure case
                .foregroundColor(darkModeEnabled ? Color.white : Color.black)
            
            Toggle(isOn: $darkModeEnabled) {
                Image(systemName: "moon.circle.fill")
                    .font(.title2)
                    .imageScale(.medium)
                Text("Enable Dark Mode")
                    .font(.subheadline)
            }
            .padding(.horizontal)
            .frame(height: 44)
            .background(Color(.systemGroupedBackground))
            .cornerRadius(10)
            .toggleStyle(SwitchToggleStyle(tint: .blue))
        } .background(backgroundColor)
    }
}


