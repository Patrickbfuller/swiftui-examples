//
//  AnimationTest.swift
//  testingggg
//
//  Created by Mirna Helmy on 3/31/22.
//

import SwiftUI

struct AnimationTest: View {
    
    @State var isAnimated: Bool = false
    
    var body: some View {
        VStack {
            Button("Button") {
                withAnimation(Animation
                    .default
                   // .delay(2.0)
                  //  .repeatCount(5, autoreverses: true)
                    .repeatForever(autoreverses: true)
                ) {
                    isAnimated.toggle()
                }
               
            }
            Spacer()
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                .fill(isAnimated ? Color.red : Color.green)
                .frame(width:isAnimated ? 100 : 200,
                       height:isAnimated ? 100 : 200)
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .offset(y : isAnimated ? 300 : 0)
//                .animation(Animation
//                    .default)
               
            Spacer()
        }
    }
}

struct AnimationTest_Previews: PreviewProvider {
    static var previews: some View {
        AnimationTest()
    }
}
