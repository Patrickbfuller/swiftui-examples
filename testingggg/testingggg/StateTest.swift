//
//  StateTest.swift
//  testingggg
//
//  Created by Mirna Helmy on 3/29/22.
//

import SwiftUI

struct StateTest: View {
    
    @State var title: String
    var body: some View {
        
        VStack {
            
            Text(title)
            
            
            Button("Press me first"){
                self.title = "1"
            }
            .background()
            
            
        }
    }
}

struct StateTest_Previews: PreviewProvider {
    static var previews: some View {
        StateTest(title:"")
        
    }
}

