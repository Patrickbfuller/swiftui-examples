//
//  TernaryTest.swift
//  testingggg
//
//  Created by Mirna Helmy on 3/31/22.
//

import SwiftUI

struct TernaryTest: View {
    
    @State var isStartingState: Bool = false
    
    var body: some View {
        VStack{
            Button("Button: \(isStartingState.description)") {
                isStartingState.toggle()
            }
                  
            Text(isStartingState ? "STARTING STATE!!!" : "ENDING STATE." )
            RoundedRectangle(cornerRadius: isStartingState ? 25.0 : 0)
                .fill(isStartingState ? Color.red : Color.blue)
                .frame(width: isStartingState ? 200 : 300, height: isStartingState ? 100 : 300)
            
            Spacer()
        }
    }
}

struct TernaryTest_Previews: PreviewProvider {
    static var previews: some View {
        TernaryTest()
    }
}
