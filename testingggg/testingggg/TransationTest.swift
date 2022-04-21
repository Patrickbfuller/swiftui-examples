//
//  TransationTest.swift
//  testingggg
//
//  Created by Mirna Helmy on 4/1/22.
//

import SwiftUI

struct TransationTest: View {
    @State var showView: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom){
           
            VStack{
                Button("Button") {
                    showView.toggle()
                }
                
                Spacer()
            }
            if showView {
            RoundedRectangle(cornerRadius: 30)
            // half of the screen
                .frame(height: UIScreen.main.bounds.height * 0.5)
           //     .opacity(showView ? 1.0 : 0.0)
           //     .transition(.slide)
            //    .transition(.move(edge: .bottom))
                .transition(.asymmetric(
                    insertion: .move(edge: .leading),
                    removal: AnyTransition.opacity.animation(.easeInOut)))
               //.transition(AnyTransition.scale.animation(.easeInOut))
         // .transition(AnyTransition.opacity.animation(.easeInOut))
           //     .animation(.spring())
             //   .animation(.easeInOut)
                
            }
        }
        
        .edgesIgnoringSafeArea(.bottom)
        
    }
}

struct TransationTest_Previews: PreviewProvider {
    static var previews: some View {
        TransationTest()
    }
}
