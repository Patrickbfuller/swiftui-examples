//
//  EmptyGraphView.swift
//  line-path
//
//  Created by Patrick Fuller on 4/6/22.
//

import SwiftUI

struct EmptyGraphView: View {
    var body: some View {
        Text("No Sessions Recorded")
            .font(.title2)
    }
}

struct EmptyGraph_Previews: PreviewProvider {
    static var previews: some View {
        EmptyGraphView()
    }
}
