//
//  ContentView.swift
//  modal
//
//  Created by Patrick Fuller on 3/8/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var modalShowing = false;
    
    @ObservedObject var randColorChar = RandomColorChar()
    
    var body: some View {
        Button("Show Modal") {
            modalShowing.toggle()
        }.sheet(isPresented: $modalShowing) {
            ColorCharView().environmentObject(randColorChar)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
