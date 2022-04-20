//
//  ContentView.swift
//  line-path
//
//  Created by Patrick Fuller on 4/6/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var showHelp = true
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Circle().frame(width: 50, height: 50).padding(.leading)
            VStack {
                Text("Path test")
                    .padding()
                GeometryReader { geo in
                    VStack {
                        GraphView(rawData: DataObject.sampleData)
                            .frame(width: geo.size.width, height: geo.size.height / 2.2)
                        Text("Your Checkups")
                        ZStack {
                            Rectangle().opacity(0.4)
                            Text("(+) Record a session ")
                        }
                        .frame(height:70)
                        .padding()
                        Spacer()
                    }
                }
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
