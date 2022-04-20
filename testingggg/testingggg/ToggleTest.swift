//
//  ToggleTest.swift
//  testingggg
//
//  Created by Mirna Helmy on 4/7/22.
//

import SwiftUI

struct ToggleTest: View {
    @State var toggleIsOn: Bool = false
    
    var body: some View {
        VStack {
            
            HStack {
                Text("Status:")
                Text(toggleIsOn ? "Online" : "Offline")
            }
            .font(.title)
            Toggle(isOn: $toggleIsOn,
                   label: {
                   Text("Label")
            })
            .toggleStyle(SwitchToggleStyle(tint: .red))
            
            Spacer()
        }
        .padding(.horizontal, 100)
    }
}

struct ToggleTest_Previews: PreviewProvider {
    static var previews: some View {
        ToggleTest()
    }
}
