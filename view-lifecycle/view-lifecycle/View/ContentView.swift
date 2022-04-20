//
//  ContentView.swift
//  view-lifecycle
//
//  Created by Patrick Fuller on 3/18/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var sheetPresented: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink {
                    ViewByNav()
                } label: {
                    Text("goto view by nav")
                }
                Button {
                    // action
                    sheetPresented.toggle()
                } label: {
                    Text("HI")
                }
            }
        }
                .sheet(isPresented: $sheetPresented) {
                    // on dismiss
                } content: {
                    ViewBySheet()
                }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
