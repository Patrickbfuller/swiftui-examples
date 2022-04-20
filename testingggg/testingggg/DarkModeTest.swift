//
//  DarkModeTest.swift
//  testingggg
//
//  Created by Mirna Helmy on 4/11/22.
//



//PRIMARY AND SECONDARY are automatic adabtive to dark mode
import SwiftUI

struct DarkModeTest: View {
    
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        NavigationView {
            ScrollView {
                
                VStack {
                    Text("This color is PRIMARY")
                        .foregroundColor(.primary)
                    Text("This color is SECONDARY")
                        .foregroundColor(.secondary)
                    Text("This color is BLACK")
                        .foregroundColor(.black)
                    Text("This color is WHITE")
                        .foregroundColor(.white)
                    Text("This color is globally adaptive")
                        .foregroundColor(Color("AdaptiveColor"))
                    Text("This color is locall adaptive!")
                        .foregroundColor((colorScheme == .light ? .green : .yellow))
                     
                    
                    
                }
                
            }
            .navigationTitle("Dark Mode")
        }
    }
}

struct DarkModeTest_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            DarkModeTest()
                .preferredColorScheme(.light)
            
            DarkModeTest()
                .preferredColorScheme(.dark)
        }
    }
}
