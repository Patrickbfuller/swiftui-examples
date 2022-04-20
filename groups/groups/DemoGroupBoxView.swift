//
//  DemoGroupBoxView.swift
//  groups
//
//  Created by Patrick Fuller on 3/11/22.
//

import SwiftUI

struct DemoGroupBoxView: View {
    var body: some View {
        VStack {
            GroupBox {
                // content:
                Text("Content of group box")
            } label: {
                // label:
                Text("optional label")
            }
            GroupBox {
                // content:
                Text("Content of other group box")
            }
            GroupBox {
                Text("lil box")
            }
        }
    }
}

struct DemoGroupBoxView_Previews: PreviewProvider {
    static var previews: some View {
        DemoGroupBoxView()
    }
}
