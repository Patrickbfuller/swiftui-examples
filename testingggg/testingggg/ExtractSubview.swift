//
//  ExtractSubview.swift
//  testingggg
//
//  Created by Mirna Helmy on 3/30/22.
//

import SwiftUI

struct ExtractSubview: View {
    var body: some View {
        ZStack{
            Color(.cyan)
            
            ContentLayer()
        }
        .ignoresSafeArea()
    }
}

struct ExtractSubview_Previews: PreviewProvider {
    static var previews: some View {
        ExtractSubview()
    }
}

struct MyItemView: View {
    let title: String
    let count: Int
    let color: Color
    
    
    var body: some View {
        VStack {
            Text("\(count)")
            Text(title)
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}

struct ContentLayer: View {
    var body: some View {
        HStack {
            MyItemView(title: "Apples", count: 1, color: .red)
            MyItemView(title: "Strawberry", count: 3, color: .red)
            MyItemView(title: "Oranges", count: 5, color: .orange)
        }
    }
}
