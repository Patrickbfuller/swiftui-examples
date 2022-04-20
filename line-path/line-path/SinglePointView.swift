//
//  SinglePointView.swift
//  line-path
//
//  Created by Patrick Fuller on 4/6/22.
//

import SwiftUI

struct SinglePointView: View {
    
    let dotSize = 15.0
    var body: some View {
        Circle().frame(width: dotSize, height: dotSize)
    }
}

struct SinglePointView_Previews: PreviewProvider {
    static var previews: some View {
        SinglePointView()
    }
}
