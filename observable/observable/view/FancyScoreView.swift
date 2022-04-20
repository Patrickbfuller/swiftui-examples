//
//  FancyScoreView.swift
//  observable
//
//  Created by Patrick Fuller on 3/7/22.
//

import SwiftUI

struct FancyScoreView: View {
    
    @Binding var score: Int
    
    var body: some View {
        VStack {
            Text("Separate View")
            Text("\(score)")
            Button("Increment Score") {
                self.score += 1
            }
            .padding()
            .background(.black)
            .opacity(0.9)
            .cornerRadius(15)
        }
        .padding(20)
        .foregroundColor(.white)
        .background(.blue)
        .opacity(0.8)
        .cornerRadius(20)
    }
}

struct FancyScoreView_Previews: PreviewProvider {
    static var previews: some View {
        FancyScoreView(score: .constant(0))
    }
}
