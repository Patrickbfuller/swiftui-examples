//
//  ContextMenuTest.swift
//  testingggg
//
//  Created by Mirna Helmy on 4/6/22.
//

import SwiftUI

struct ContextMenuTest: View {
    @State var backgroundColor: Color = Color.blue
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0){
            Image(systemName: "house.fill")
                .font(.title)
            Text("Swiftful Thinking")
                .font(.headline)
            Text("How to use Context Menu")
                .font(.subheadline)
            
        }
        .foregroundColor(.white)
        .padding(30)
        .background(backgroundColor.cornerRadius(30))
        .contextMenu(menuItems: {
            Button(action: {
                backgroundColor = .yellow
            }, label: {
                Label("Share post", systemImage: "flame.fill")
            })

           
            Button(action: {
                backgroundColor = .red
            }, label: {
                Text("Report post")
            })
            
            
            Button(action: {
                backgroundColor = .green
            }, label: {
                HStack {
                    Text("Like post")
                    Image(systemName: "heart.fill")
                }
            })
            
        })
    }
}


struct ContextMenuTest_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuTest()
    }
}
