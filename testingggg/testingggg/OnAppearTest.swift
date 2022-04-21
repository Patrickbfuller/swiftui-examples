//
//  OnAppearTest.swift
//  testingggg
//
//  Created by Mirna Helmy on 4/12/22.
//

import SwiftUI

struct OnAppearTest: View {
    
    @State var myText: String = "Start text."
    @State var count: Int = 0
    
    var body: some View {
        NavigationView {
            ScrollView {
                Text(myText)
                LazyVStack {
                    ForEach(0..<50) { _ in
                        RoundedRectangle(cornerRadius: 25.0)
                            .frame(height: 200)
                            .padding()
                            .onAppear {
                                 count += 1
                            }
                        
                    }
                }
                
            }
            .onAppear(perform: {
                // DELAY THE VIEW, COOL HA?
                DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                myText = "This is the new text!"
                }
            })
            .onDisappear(perform: {
                myText = "Ending text."
            })
            .navigationTitle("On Appear \(count)")
        }
    }
}

struct OnAppearTest_Previews: PreviewProvider {
    static var previews: some View {
        OnAppearTest()
    }
}
