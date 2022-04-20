//
//  ContentView.swift
//  testingggg
//
//  Created by Mirna Helmy on 3/18/22.
//

import SwiftUI

struct ContentView: View {
    let shopping = [""]
    var body: some View {
        ZStack{
        VStack {
            ForEach(0 ... 20 , id: \.self) { index in
                Text("Heeeh")
                
              
            }
            Rectangle()
                .fill(Color.primary)   
            
    }
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
}
