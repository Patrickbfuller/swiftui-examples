//
//  ContentView.swift
//  sample-slide-menu
//
//  Created by Patrick Fuller on 3/21/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var showSide = true
    var offset = 0
    
    var body: some View {
        
        ZStack {
            
            // back layer
            ZStack(alignment: .topLeading) {
                Rectangle()
                
                VStack {
                    HStack {
                        Rectangle()
                            .foregroundColor(.mint)
                            .frame(width: 200, height: 350)
                            .offset(x: showSide ? 0 : -200)
                        Spacer()
                    }
                    Spacer()
                }
                
                Button("Switch") {
                    withAnimation {
                        showSide.toggle()
                    }
                }.foregroundColor(.white)
            }
            
            
            
            
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
