//
//  AnimationTimingTest.swift
//  testingggg
//
//  Created by Mirna Helmy on 4/1/22.
//

import SwiftUI

struct AnimationTimingTest: View {
    
    @State var isAnimating: Bool = false
    let timinig: Double = 10.0
    
    
    var body: some View {
        VStack{
            Button("Button") {
                isAnimating.toggle()
            }
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350 : 50, height: 100)
//                .animation(Animation.linear(duration: timinig))
//
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350 : 50, height: 100)
//                .animation(Animation.easeIn(duration: timinig))
//
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350 : 50, height: 100)
//                .animation(Animation.easeInOut(duration: timinig))
//
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350 : 50, height: 100)
//                .animation(Animation.easeOut(duration: timinig))
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(.spring(response: 0.5 ,
                                   //bouncing back
                                   dampingFraction: 0.7,
                                   blendDuration: 1.0))
            
            
        }
    }
}

struct AnimationTimingTest_Previews: PreviewProvider {
    static var previews: some View {
        AnimationTimingTest()
    }
}
