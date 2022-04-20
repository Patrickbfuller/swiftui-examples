//
//  ContentView.swift
//  matched-geo
//
//  Created by Patrick Fuller on 3/11/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var isFlipped = true
    
    @State var isSwitched = true
    @Namespace var ns
    
    var body: some View {
        
        NavigationView {
            
            VStack(alignment: .center) {
                NavigationLink("music view") {
                    MusicView()
                }
                
                VStack {
                    if isFlipped {
                        Circle()
                            .fill(Color.red)
                            .frame(width: 44, height: 44)
                            .matchedGeometryEffect(id: "Shape", in: ns)
                        Text("Taylor Swift – 1989")
                            .matchedGeometryEffect(id: "AlbumTitle", in: ns)
                            .font(.headline)
                    } else {
                        Text("Taylor Swift – 1989")
                            .matchedGeometryEffect(id: "AlbumTitle", in: ns)
                            .font(.headline)
                        Circle()
                            .fill(Color.blue)
                            .frame(width: 44, height: 44)
                            .matchedGeometryEffect(id: "Shape", in: ns)
                    }
                }
                .onTapGesture {
                    withAnimation {
                        isFlipped.toggle()
                    }
                }
                
                HStack {
                    if !isSwitched {
                        Circle()
                            .fill(.red)
                            .frame(width: 50, height: 50)
                            .matchedGeometryEffect(id: "circ", in: ns)
                    }
                    
                    Spacer()
                    
                    Button("Switch") {
                        withAnimation {
                            isSwitched.toggle()
                        }
                    }
                    
                    Spacer()
                    
                    if isSwitched {
                        Circle()
                            .fill(.green    )
                            .matchedGeometryEffect(id: "circ", in: ns)
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
