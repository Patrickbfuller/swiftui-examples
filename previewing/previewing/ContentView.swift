//
//  ContentView.swift
//  previewing
//
//  Created by Patrick Fuller on 3/7/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List(dayDescriptions) { dayDesc in
            Cell(dayDesc: dayDesc)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
