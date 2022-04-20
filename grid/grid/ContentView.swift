//
//  ContentView.swift
//  grid
//
//  Created by Patrick Fuller on 3/10/22.
//

import SwiftUI

struct ContentView: View {
    
    let columns: [GridItem] = [
        GridItem(.fixed(100)),
        GridItem(.fixed(100)),
        GridItem(.fixed(100))
    ]
    
    func headerView(_ index: Int) -> some View {
        Text("Section \(index)")
            .padding()
            .foregroundColor(.white)
            .font(.title)
            .frame(maxWidth: .infinity)
            .background(.blue)
        
    }
    var body: some View {
        
        NavigationView {
            ScrollView{
                LazyVGrid(columns: columns, spacing: 10, pinnedViews: [.sectionHeaders]) {
                    
                    ForEach(1..<11) { index in
                        
                        Section(header: headerView(index)) {
                            
                            
                            ForEach(1..<20) { _ in
                                
                                Rectangle()
                                    .fill(.red)
                                    .aspectRatio(contentMode: .fit)
                            }
                        }
                    }
                }
            }
            .navigationTitle("Pinned Views")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
