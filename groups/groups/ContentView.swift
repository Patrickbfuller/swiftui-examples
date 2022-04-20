//
//  ContentView.swift
//  groups
//
//  Created by Patrick Fuller on 3/10/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                NavigationLink("group box", destination: DemoGroupBoxView())
                NavigationLink("outline group", destination: DemoOutlineGroupView())
                NavigationLink("disclosure group", destination: DemoDisclosureGroupView())
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
