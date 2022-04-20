//
//  PaintingCardView.swift
//  realm-eg
//
//  Created by Patrick Fuller on 4/19/22.
//

import SwiftUI

struct PaintingCardView: View {
    
    var painting: Painting
    
    var body: some View {
        Text("Title: \(painting.paintingTitle)")
            .padding()
            .border(.indigo, width: 1)
    }
}

//struct PaintingCardView_Previews: PreviewProvider {
//    static var previews: some View {
//        PaintingCardView()
//    }
//}
