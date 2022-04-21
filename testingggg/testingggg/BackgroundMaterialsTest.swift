//
//  BackgroundMaterialsTest.swift
//  testingggg
//
//  Created by Mirna Helmy on 4/18/22.
//

import SwiftUI

//These System Materials are very commonly used as backgrounds for a subtle, yet professional look to your apps. As you'll see, the colors are not totally opaque and allow some natural color to bleed through. It is also automatically adapt for light and dark mode!


struct BackgroundMaterialsTest: View {
    var body: some View {
        VStack{
            Spacer()
            
            VStack {
               RoundedRectangle(cornerRadius: 4)
                    .frame(width: 50, height: 4)
                    .padding()
                Spacer()
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
          //  .background(Color.black.opacity(0.5))
         //   .background(.thinMaterial)
        //    .background(.thickMaterial)
         //   .background(.regularMaterial)
            .background(.ultraThinMaterial)
            .cornerRadius(30)
            
        }
        .ignoresSafeArea()
        .background(
            //we can use color too
        Image("Image")
        )
    }
}

struct BackgroundMaterialsTest_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundMaterialsTest()
    }
}
